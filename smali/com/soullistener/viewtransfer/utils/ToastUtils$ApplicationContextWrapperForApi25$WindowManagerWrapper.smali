.class final Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowManagerWrapper"
.end annotation


# instance fields
.field private final base:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "base"    # Landroid/view/WindowManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/WindowManager;Lcom/soullistener/viewtransfer/utils/ToastUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/WindowManager;
    .param p2, "x1"    # Lcom/soullistener/viewtransfer/utils/ToastUtils$1;

    .line 356
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;-><init>(Landroid/view/WindowManager;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "WindowManagerWrapper"

    const-string v2, "[addView]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 378
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 379
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "WindowManagerWrapper"

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    nop

    .line 383
    :goto_1
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 392
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 393
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 372
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 387
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25$WindowManagerWrapper;->base:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    return-void
.end method
