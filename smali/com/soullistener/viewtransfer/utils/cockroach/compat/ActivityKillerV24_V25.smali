.class public Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;
.super Ljava/lang/Object;
.source "ActivityKillerV24_V25.java"

# interfaces
.implements Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finish(Landroid/os/IBinder;)V
    .locals 13
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, "activityManagerNativeClass":Ljava/lang/Class;
    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 80
    .local v1, "getDefaultMethod":Ljava/lang/reflect/Method;
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    .local v3, "activityManager":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "finishActivity"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-class v9, Landroid/content/Intent;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 84
    .local v5, "finishActivityMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 85
    .local v6, "DONT_FINISH_TASK_WITH_ACTIVITY":I
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    aput-object v4, v7, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v12

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method private finishSomeArgs(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 59
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    .local v0, "someArgs":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "arg1"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 61
    .local v1, "arg1Field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 63
    .local v2, "binder":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "someArgs":Ljava/lang/Object;
    .end local v1    # "arg1Field":Ljava/lang/reflect/Field;
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public finishLaunchActivity(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 25
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .local v0, "activityClientRecord":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 29
    .local v1, "tokenField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 31
    .local v2, "binder":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "activityClientRecord":Ljava/lang/Object;
    .end local v1    # "tokenField":Ljava/lang/reflect/Field;
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public finishPauseActivity(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .line 48
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;->finishSomeArgs(Landroid/os/Message;)V

    .line 49
    return-void
.end method

.method public finishResumeActivity(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .line 41
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;->finishSomeArgs(Landroid/os/Message;)V

    .line 42
    return-void
.end method

.method public finishStopActivity(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .line 53
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;->finishSomeArgs(Landroid/os/Message;)V

    .line 54
    return-void
.end method
