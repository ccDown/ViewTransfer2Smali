.class public Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;
.super Ljava/lang/Object;
.source "ActivityKillerV26.java"

# interfaces
.implements Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finish(Landroid/os/IBinder;)V
    .locals 12
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 72
    .local v0, "getServiceMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "activityManager":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "finishActivity"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Landroid/content/Intent;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 75
    .local v4, "finishActivityMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    const/4 v5, 0x0

    .line 77
    .local v5, "DONT_FINISH_TASK_WITH_ACTIVITY":I
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v11

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method private finishSomeArgs(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 60
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .local v0, "someArgs":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "arg1"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 62
    .local v1, "arg1Field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 64
    .local v2, "binder":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "someArgs":Ljava/lang/Object;
    .end local v1    # "arg1Field":Ljava/lang/reflect/Field;
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public finishLaunchActivity(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 26
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .local v0, "activityClientRecord":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 30
    .local v1, "tokenField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 32
    .local v2, "binder":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "activityClientRecord":Ljava/lang/Object;
    .end local v1    # "tokenField":Ljava/lang/reflect/Field;
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public finishPauseActivity(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .line 49
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;->finishSomeArgs(Landroid/os/Message;)V

    .line 50
    return-void
.end method

.method public finishResumeActivity(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .line 42
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;->finishSomeArgs(Landroid/os/Message;)V

    .line 43
    return-void
.end method

.method public finishStopActivity(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .line 54
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;->finishSomeArgs(Landroid/os/Message;)V

    .line 55
    return-void
.end method
