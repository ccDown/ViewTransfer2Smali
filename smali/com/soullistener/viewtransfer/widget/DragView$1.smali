.class public final Lcom/soullistener/viewtransfer/widget/DragView$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DragView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/widget/DragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0003H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "com/soullistener/viewtransfer/widget/DragView$1",
        "Landroid/support/v4/widget/ViewDragHelper$Callback;",
        "clampViewPositionHorizontal",
        "",
        "child",
        "Landroid/view/View;",
        "left",
        "dx",
        "clampViewPositionVertical",
        "top",
        "dy",
        "getViewHorizontalDragRange",
        "getViewVerticalDragRange",
        "onViewCaptured",
        "",
        "capturedChild",
        "activePointerId",
        "onViewReleased",
        "releasedChild",
        "xvel",
        "",
        "yvel",
        "tryCaptureView",
        "",
        "pointerId",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soullistener/viewtransfer/widget/DragView;


# direct methods
.method constructor <init>(Lcom/soullistener/viewtransfer/widget/DragView;)V
    .locals 0
    .param p1, "$outer"    # Lcom/soullistener/viewtransfer/widget/DragView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "left"    # I
    .param p3, "dx"    # I

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/widget/DragView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/widget/DragView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 40
    :cond_0
    if-gez p2, :cond_1

    .line 41
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_1
    nop

    .line 43
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "top"    # I
    .param p3, "dy"    # I

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/widget/DragView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/widget/DragView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 56
    :cond_0
    if-gez p2, :cond_1

    .line 57
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_1
    nop

    .line 59
    return p2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "activePointerId"    # I

    const-string v0, "capturedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 80
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soullistener/viewtransfer/widget/DragView;->access$setMViewDragLeft$p(Lcom/soullistener/viewtransfer/widget/DragView;Ljava/lang/Integer;)V

    .line 81
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soullistener/viewtransfer/widget/DragView;->access$setMViewDragTop$p(Lcom/soullistener/viewtransfer/widget/DragView;Ljava/lang/Integer;)V

    .line 82
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3
    .param p1, "releasedChild"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    const-string v0, "releasedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 89
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-static {v0}, Lcom/soullistener/viewtransfer/widget/DragView;->access$getViewDragHelper$p(Lcom/soullistener/viewtransfer/widget/DragView;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-static {v1}, Lcom/soullistener/viewtransfer/widget/DragView;->access$getMViewDragLeft$p(Lcom/soullistener/viewtransfer/widget/DragView;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-static {v2}, Lcom/soullistener/viewtransfer/widget/DragView;->access$getMViewDragTop$p(Lcom/soullistener/viewtransfer/widget/DragView;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 90
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/widget/DragView;->invalidate()V

    .line 91
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pointerId"    # I

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView$1;->this$0:Lcom/soullistener/viewtransfer/widget/DragView;

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/widget/DragView;->getCanMoved()Z

    move-result v0

    return v0
.end method
