.class final Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25;
.super Landroid/content/ContextWrapper;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soullistener/viewtransfer/utils/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationContextWrapperForApi25"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 338
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 342
    return-object p0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 347
    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;

    .line 350
    invoke-virtual {p0}, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;-><init>(Landroid/view/WindowManager;Lcom/soullistener/viewtransfer/utils/ToastUtils$1;)V

    .line 349
    return-object v0

    .line 353
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
