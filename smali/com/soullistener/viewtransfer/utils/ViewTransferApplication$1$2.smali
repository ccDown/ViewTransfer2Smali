.class Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$2;
.super Ljava/lang/Object;
.source "ViewTransferApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;->onBandageExceptionHappened(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;

    .line 67
    iput-object p1, p0, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$2;->this$1:Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;

    iput-object p2, p0, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u518d\u6b21\u53d1\u751f\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    return-void
.end method
