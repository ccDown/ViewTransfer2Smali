.class public final Lio/reactivex/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;
    }
.end annotation


# static fields
.field private static final MAIN_THREAD:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lio/reactivex/android/schedulers/AndroidSchedulers$1;

    invoke-direct {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers$1;-><init>()V

    invoke-static {v0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static from(Landroid/os/Looper;)Lio/reactivex/Scheduler;
    .locals 1
    .param p0, "looper"    # Landroid/os/Looper;

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;Z)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/os/Looper;Z)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "async"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 59
    if-eqz p0, :cond_2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 61
    const/4 p1, 0x0

    goto :goto_1

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    .line 64
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const/4 p1, 0x0

    .line 70
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 72
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p1}, Lio/reactivex/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;Z)V

    return-object v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "looper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mainThread()Lio/reactivex/Scheduler;
    .locals 1

    .line 42
    sget-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->onMainThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
