.class final Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$1;
.super Ljava/lang/Object;
.source "Cockroach.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->install(Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 37
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$000()Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$000()Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;->uncaughtExceptionHappened(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 41
    invoke-static {p2}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$100(Ljava/lang/Throwable;)V

    .line 42
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$200()V

    .line 44
    :cond_1
    return-void
.end method
