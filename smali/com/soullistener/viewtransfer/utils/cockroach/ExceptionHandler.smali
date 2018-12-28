.class public abstract Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final bandageExceptionHappened(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->onBandageExceptionHappened(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method final enterSafeMode()V
    .locals 1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->onEnterSafeMode()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method final mayBeBlackScreen(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->onMayBeBlackScreen(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method protected abstract onBandageExceptionHappened(Ljava/lang/Throwable;)V
.end method

.method protected abstract onEnterSafeMode()V
.end method

.method protected onMayBeBlackScreen(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 61
    return-void
.end method

.method protected abstract onUncaughtExceptionHappened(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end method

.method final uncaughtExceptionHappened(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->onUncaughtExceptionHappened(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
