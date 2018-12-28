.class final Lcom/soullistener/viewtransfer/utils/ToastUtils$2;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 259
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->cancel()V

    .line 260
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 261
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 262
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$2;->val$duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 263
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$300()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$400()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$500()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 264
    :cond_0
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$300()I

    move-result v1

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$400()I

    move-result v2

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$500()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 266
    :cond_1
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$800()V

    .line 267
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$700()V

    .line 268
    return-void
.end method
