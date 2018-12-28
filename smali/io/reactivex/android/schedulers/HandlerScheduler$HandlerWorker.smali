.class final Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/android/schedulers/HandlerScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerWorker"
.end annotation


# instance fields
.field private final async:Z

.field private volatile disposed:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "async"    # Z

    .line 56
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    .line 58
    iput-boolean p2, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->async:Z

    .line 59
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    .line 96
    iget-object v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 5
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 64
    if-eqz p1, :cond_4

    .line 65
    if-eqz p4, :cond_3

    .line 67
    iget-boolean v0, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 73
    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 75
    .local v0, "scheduled":Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;
    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 76
    .local v1, "message":Landroid/os/Message;
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    iget-boolean v2, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->async:Z

    if-eqz v2, :cond_1

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 82
    :cond_1
    iget-object v2, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    iget-boolean v2, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->disposed:Z

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object v2

    return-object v2

    .line 90
    :cond_2
    return-object v0

    .line 65
    .end local v0    # "scheduled":Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "run == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
