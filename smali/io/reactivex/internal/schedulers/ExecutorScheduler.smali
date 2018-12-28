.class public final Lio/reactivex/internal/schedulers/ExecutorScheduler;
.super Lio/reactivex/Scheduler;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;,
        Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;,
        Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;
    }
.end annotation


# static fields
.field static final HELPER:Lio/reactivex/Scheduler;


# instance fields
.field final executor:Ljava/util/concurrent/Executor;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->single()Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->HELPER:Lio/reactivex/Scheduler;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    .line 41
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 46
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .param p1, "run"    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 52
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 54
    .local v0, "decoratedRun":Ljava/lang/Runnable;
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 56
    .local v1, "task":Lio/reactivex/internal/schedulers/ScheduledDirectTask;
    iget-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 57
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v1, v2}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->setFuture(Ljava/util/concurrent/Future;)V

    .line 58
    return-object v1

    .line 61
    .end local v1    # "task":Lio/reactivex/internal/schedulers/ScheduledDirectTask;
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    new-instance v1, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .local v1, "br":Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;
    iget-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object v1

    .line 64
    .end local v1    # "br":Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 66
    sget-object v2, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v2
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 4
    .param p1, "run"    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 73
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 74
    .local v0, "decoratedRun":Ljava/lang/Runnable;
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    new-instance v1, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 77
    .local v1, "task":Lio/reactivex/internal/schedulers/ScheduledDirectTask;
    iget-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 78
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v1, v2}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v1

    .line 80
    .end local v1    # "task":Lio/reactivex/internal/schedulers/ScheduledDirectTask;
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 82
    sget-object v2, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v2

    .line 86
    .end local v1    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    new-instance v1, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 88
    .local v1, "dr":Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;
    sget-object v2, Lio/reactivex/internal/schedulers/ExecutorScheduler;->HELPER:Lio/reactivex/Scheduler;

    new-instance v3, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;

    invoke-direct {v3, p0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;-><init>(Lio/reactivex/internal/schedulers/ExecutorScheduler;Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;)V

    invoke-virtual {v2, v3, p2, p3, p4}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 90
    .local v2, "delayed":Lio/reactivex/disposables/Disposable;
    iget-object v3, v1, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->timed:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v3, v2}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 92
    return-object v1
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 9
    .param p1, "run"    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 101
    .local v0, "decoratedRun":Ljava/lang/Runnable;
    :try_start_0
    new-instance v1, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;)V

    .line 102
    .local v1, "task":Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;
    iget-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, v1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 103
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v1, v2}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-object v1

    .line 105
    .end local v1    # "task":Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 107
    sget-object v2, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v2

    .line 110
    .end local v0    # "decoratedRun":Ljava/lang/Runnable;
    .end local v1    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    invoke-super/range {p0 .. p6}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method
