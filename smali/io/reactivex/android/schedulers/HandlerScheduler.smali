.class final Lio/reactivex/android/schedulers/HandlerScheduler;
.super Lio/reactivex/Scheduler;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;,
        Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;
    }
.end annotation


# instance fields
.field private final async:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "async"    # Z

    .line 29
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    .line 31
    iput-boolean p2, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->async:Z

    .line 32
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 3

    .line 47
    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;

    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    iget-boolean v2, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->async:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/android/schedulers/HandlerScheduler$HandlerWorker;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 4
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 36
    if-eqz p1, :cond_1

    .line 37
    if-eqz p4, :cond_0

    .line 39
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 40
    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 41
    .local v0, "scheduled":Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;
    iget-object v1, p0, Lio/reactivex/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-object v0

    .line 37
    .end local v0    # "scheduled":Lio/reactivex/android/schedulers/HandlerScheduler$ScheduledRunnable;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "run == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
