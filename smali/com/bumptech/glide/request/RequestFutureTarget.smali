.class public Lcom/bumptech/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/FutureTarget;
.implements Lcom/bumptech/glide/request/RequestListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/FutureTarget<",
        "TR;>;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final assertBackgroundThread:Z

.field private exception:Lcom/bumptech/glide/load/engine/GlideException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final height:I

.field private isCancelled:Z

.field private loadFailed:Z

.field private final mainHandler:Landroid/os/Handler;

.field private request:Lcom/bumptech/glide/request/Request;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private resource:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private resultReceived:Z

.field private final waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 6
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 77
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    sget-object v5, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
    .locals 0
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "assertBackgroundThread"    # Z
    .param p5, "waiter"    # Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 81
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    .line 83
    iput p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    .line 84
    iput p3, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    .line 85
    iput-boolean p4, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    .line 86
    iput-object p5, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 87
    return-void
.end method

.method private clearOnMainThread()V
    .locals 1

    .line 234
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeoutMillis"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_9

    .line 192
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z

    if-nez v0, :cond_8

    .line 194
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 198
    :cond_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    .line 199
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v2, p0, v0, v1}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    .local v0, "now":J
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    add-long/2addr v2, v0

    .line 203
    .local v2, "deadline":J
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v4

    if-nez v4, :cond_3

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 204
    iget-object v4, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    const/4 v5, 0x0

    sub-long v5, v2, v0

    invoke-virtual {v4, p0, v5, v6}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 209
    .end local v0    # "now":J
    .end local v2    # "deadline":J
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 211
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z

    if-nez v0, :cond_6

    .line 213
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_5

    .line 215
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 216
    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 214
    :cond_5
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 212
    :cond_6
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 210
    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 193
    :cond_8
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 191
    :cond_9
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .end local p1    # "timeoutMillis":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 95
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V

    .line 96
    if-eqz p1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->clearOnMainThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_1
    monitor-exit p0

    return v0

    .line 90
    .end local p1    # "mayInterruptIfRunning":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "time"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 148
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    iget v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 133
    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    monitor-enter p0

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .line 250
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 157
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    return-void
.end method

.method public declared-synchronized onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    monitor-enter p0

    .line 173
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
    .param p1, "e"    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "model"    # Ljava/lang/Object;
    .param p4, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;Z)Z"
        }
    .end annotation

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    monitor-enter p0

    .line 255
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z

    .line 256
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 257
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 254
    .end local p1    # "e":Lcom/bumptech/glide/load/engine/GlideException;
    .end local p2    # "model":Ljava/lang/Object;
    .end local p3    # "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .end local p4    # "isFirstResource":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-TR;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    .local p1, "resource":Ljava/lang/Object;, "TR;"
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-TR;>;"
    monitor-enter p0

    .line 182
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 1
    .param p2, "model"    # Ljava/lang/Object;
    .param p4, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p5, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    .local p1, "resource":Ljava/lang/Object;, "TR;"
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    monitor-enter p0

    .line 265
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 266
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 264
    .end local p1    # "resource":Ljava/lang/Object;, "TR;"
    .end local p2    # "model":Ljava/lang/Object;
    .end local p3    # "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .end local p4    # "dataSource":Lcom/bumptech/glide/load/DataSource;
    .end local p5    # "isFirstResource":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStart()V
    .locals 0

    .line 240
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 245
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    return-void
.end method

.method public run()V
    .locals 1

    .line 227
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 231
    :cond_0
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    .local p0, "this":Lcom/bumptech/glide/request/RequestFutureTarget;, "Lcom/bumptech/glide/request/RequestFutureTarget<TR;>;"
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 143
    return-void
.end method
