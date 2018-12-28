.class public final Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;
.super Ljava/lang/Object;
.source "Cockroach.java"


# static fields
.field private static sActivityKiller:Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

.field private static sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

.field private static sInstalled:Z

.field private static sIsSafeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sInstalled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;
    .locals 1

    .line 15
    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 15
    invoke-static {p0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->isChoreographerException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 15
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->safeMode()V

    return-void
.end method

.method static synthetic access$300()Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;
    .locals 1

    .line 15
    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sActivityKiller:Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 15
    invoke-static {p0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->notifyException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static hookmH()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    const/16 v0, 0x64

    .line 77
    .local v0, "LAUNCH_ACTIVITY":I
    const/16 v1, 0x65

    .line 78
    .local v1, "PAUSE_ACTIVITY":I
    const/16 v2, 0x66

    .line 79
    .local v2, "PAUSE_ACTIVITY_FINISHING":I
    const/16 v3, 0x68

    .line 80
    .local v3, "STOP_ACTIVITY_HIDE":I
    const/16 v4, 0x6b

    .line 81
    .local v4, "RESUME_ACTIVITY":I
    const/16 v5, 0x6d

    .line 82
    .local v5, "DESTROY_ACTIVITY":I
    const/16 v6, 0x70

    .line 83
    .local v6, "NEW_INTENT":I
    const/16 v7, 0x7e

    .line 84
    .local v7, "RELAUNCH_ACTIVITY":I
    const-string v8, "android.app.ActivityThread"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 85
    .local v8, "activityThreadClass":Ljava/lang/Class;
    const-string v9, "currentActivityThread"

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 87
    .local v9, "activityThread":Ljava/lang/Object;
    const-string v10, "mH"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 88
    .local v10, "mhField":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Handler;

    .line 90
    .local v12, "mhHandler":Landroid/os/Handler;
    const-class v13, Landroid/os/Handler;

    const-string v14, "mCallback"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 91
    .local v13, "callbackField":Ljava/lang/reflect/Field;
    invoke-virtual {v13, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    new-instance v11, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;

    invoke-direct {v11, v12}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v13, v12, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method private static initActivityKiller()V
    .locals 3

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;

    invoke-direct {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV26;-><init>()V

    sput-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sActivityKiller:Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    goto :goto_1

    .line 57
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 60
    new-instance v0, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV21_V23;

    invoke-direct {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV21_V23;-><init>()V

    sput-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sActivityKiller:Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    goto :goto_1

    .line 61
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v0, v2, :cond_3

    .line 62
    new-instance v0, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV15_V20;

    invoke-direct {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV15_V20;-><init>()V

    sput-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sActivityKiller:Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    goto :goto_1

    .line 63
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_5

    .line 64
    new-instance v0, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV15_V20;

    invoke-direct {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV15_V20;-><init>()V

    sput-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sActivityKiller:Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    goto :goto_1

    .line 58
    :cond_4
    :goto_0
    new-instance v0, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;

    invoke-direct {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/ActivityKillerV24_V25;-><init>()V

    sput-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sActivityKiller:Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    .line 68
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->hookmH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public static install(Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;)V
    .locals 1
    .param p0, "exceptionHandler"    # Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    .line 26
    sget-boolean v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sInstalled:Z

    .line 30
    sput-object p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    .line 32
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->initActivityKiller()V

    .line 34
    new-instance v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$1;

    invoke-direct {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 47
    return-void
.end method

.method private static isChoreographerException(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 191
    if-eqz p0, :cond_5

    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 195
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_1

    .line 196
    return-void

    .line 199
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_4

    .line 200
    array-length v2, v0

    sub-int/2addr v2, v1

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    .line 201
    return-void

    .line 203
    :cond_2
    aget-object v2, v0, v1

    .line 204
    .local v2, "element":Ljava/lang/StackTraceElement;
    const-string v3, "android.view.Choreographer"

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Choreographer.java"

    .line 205
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "doFrame"

    .line 206
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    sget-object v3, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    invoke-virtual {v3, p0}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->mayBeBlackScreen(Ljava/lang/Throwable;)V

    .line 208
    return-void

    .line 199
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 192
    .end local v0    # "elements":[Ljava/lang/StackTraceElement;
    :cond_5
    :goto_1
    return-void
.end method

.method public static isSafeMode()Z
    .locals 1

    .line 163
    sget-boolean v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sIsSafeMode:Z

    return v0
.end method

.method private static notifyException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 151
    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    invoke-virtual {v0, p0}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->bandageExceptionHappened(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :cond_1
    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->uncaughtExceptionHappened(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 158
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->safeMode()V

    .line 160
    :goto_0
    return-void
.end method

.method private static safeMode()V
    .locals 2

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sIsSafeMode:Z

    .line 168
    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->enterSafeMode()V

    .line 173
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_1
    :goto_1
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->isChoreographerException(Ljava/lang/Throwable;)V

    .line 176
    sget-object v1, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    if-eqz v1, :cond_1

    .line 177
    sget-object v1, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->sExceptionHandler:Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    invoke-virtual {v1, v0}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->bandageExceptionHappened(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
