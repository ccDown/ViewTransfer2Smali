.class final Lcom/soullistener/viewtransfer/utils/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->cancel()V

    .line 238
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 239
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    .local v0, "tvMessage":Landroid/widget/TextView;
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$100()I

    move-result v1

    const v2, -0x1000001

    if-eq v1, v2, :cond_0

    .line 241
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    :cond_0
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$200()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 244
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$200()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 246
    :cond_1
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$300()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$400()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$500()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 247
    :cond_2
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v1

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$300()I

    move-result v2

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$400()I

    move-result v3

    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$500()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 249
    :cond_3
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$600(Landroid/widget/TextView;)V

    .line 250
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->access$700()V

    .line 251
    return-void
.end method
