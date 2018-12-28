.class Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;
.super Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;
.source "ViewTransferApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;->cockroachInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;


# direct methods
.method constructor <init>(Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;

    .line 51
    iput-object p1, p0, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;->this$0:Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;

    invoke-direct {p0}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBandageExceptionHappened(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$2;

    invoke-direct {v1, p0, p1}, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$2;-><init>(Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    return-void
.end method

.method protected onEnterSafeMode()V
    .locals 1

    .line 82
    const-string v0, "onEnterSafeMode"

    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->showLong(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method protected onMayBeBlackScreen(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 89
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->onUncaughtExceptionHappened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "<---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method protected onUncaughtExceptionHappened(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$1;

    invoke-direct {v1, p0, p2}, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$1;-><init>(Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method
