.class public final Lcom/soullistener/viewtransfer/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;,
        Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;
    }
.end annotation


# static fields
.field static final ACTIVITY_LIFECYCLE:Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;

.field private static sApplication:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;

    invoke-direct {v0}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;-><init>()V

    sput-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->ACTIVITY_LIFECYCLE:Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getActivityLifecycle()Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;
    .locals 1

    .line 104
    sget-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->ACTIVITY_LIFECYCLE:Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;

    return-object v0
.end method

.method static getActivityList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->ACTIVITY_LIFECYCLE:Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;

    iget-object v0, v0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 5

    .line 78
    sget-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->sApplication:Landroid/app/Application;

    return-object v0

    .line 83
    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, "at":Ljava/lang/Object;
    const-string v3, "getApplication"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    .local v2, "app":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 89
    move-object v3, v2

    check-cast v3, Landroid/app/Application;

    invoke-static {v3}, Lcom/soullistener/viewtransfer/utils/Utils;->init(Landroid/app/Application;)V

    .line 90
    sget-object v3, Lcom/soullistener/viewtransfer/utils/Utils;->sApplication:Landroid/app/Application;

    return-object v3

    .line 87
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "u should init first"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "at":Ljava/lang/Object;
    .end local v2    # "app":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 93
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 91
    :catch_3
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 100
    :goto_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "u should init first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getTopActivityOrApp()Landroid/content/Context;
    .locals 2

    .line 112
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->isAppForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->ACTIVITY_LIFECYCLE:Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "topActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 116
    .end local v0    # "topActivity":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    sget-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 67
    sput-object p0, Lcom/soullistener/viewtransfer/utils/Utils;->sApplication:Landroid/app/Application;

    .line 68
    sget-object v0, Lcom/soullistener/viewtransfer/utils/Utils;->sApplication:Landroid/app/Application;

    sget-object v1, Lcom/soullistener/viewtransfer/utils/Utils;->ACTIVITY_LIFECYCLE:Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/Utils;->init(Landroid/app/Application;)V

    .line 57
    return-void
.end method

.method static isAppForeground()Z
    .locals 7

    .line 122
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 123
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    return v1

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 127
    .local v2, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 131
    .local v4, "aInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 132
    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 134
    .end local v4    # "aInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_0

    .line 135
    :cond_3
    return v1

    .line 128
    :cond_4
    :goto_1
    return v1
.end method
