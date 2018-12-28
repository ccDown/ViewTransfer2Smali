.class final Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ViewSaveActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/ViewSaveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soullistener/viewtransfer/ViewSaveActivity;


# direct methods
.method constructor <init>(Lcom/soullistener/viewtransfer/ViewSaveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;->this$0:Lcom/soullistener/viewtransfer/ViewSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "it"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;->this$0:Lcom/soullistener/viewtransfer/ViewSaveActivity;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/ViewSaveActivity;->getPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "\u672a\u83b7\u53d6\u6743\u9650"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "viewsave.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;->this$0:Lcom/soullistener/viewtransfer/ViewSaveActivity;

    const v3, 0x7f070050

    invoke-virtual {v2, v3}, Lcom/soullistener/viewtransfer/ViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 47
    .local v2, "viewroot":Landroid/widget/LinearLayout;
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->rootViewToViewTreeBean(Landroid/view/View;)Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    move-result-object v3

    .line 48
    .local v3, "viewList":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    invoke-static {v0, v3}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->bean2File(Ljava/io/File;Lcom/soullistener/viewtransfer/model/ViewTreeBean;)Z

    move-result v4

    .line 50
    .local v4, "isSuccessed":Z
    if-eqz v4, :cond_1

    .line 51
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;->this$0:Lcom/soullistener/viewtransfer/ViewSaveActivity;

    check-cast v5, Landroid/content/Context;

    const-class v6, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;->this$0:Lcom/soullistener/viewtransfer/ViewSaveActivity;

    invoke-virtual {v5, v1}, Lcom/soullistener/viewtransfer/ViewSaveActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v5, "\u5199\u5165\u6587\u4ef6\u5931\u8d25"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "viewroot":Landroid/widget/LinearLayout;
    .end local v3    # "viewList":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    .end local v4    # "isSuccessed":Z
    :goto_0
    nop

    .line 56
    return-void
.end method
