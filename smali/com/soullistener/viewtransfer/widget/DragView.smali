.class public final Lcom/soullistener/viewtransfer/widget/DragView;
.super Landroid/widget/LinearLayout;
.source "DragView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u000e\u0010\u0008\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\tJ\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\tJ\u0006\u0010\u001e\u001a\u00020\u0018J\u0008\u0010\u001f\u001a\u00020\u0018H\u0016J\u0010\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"H\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/soullistener/viewtransfer/widget/DragView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "canMoved",
        "",
        "getCanMoved",
        "()Z",
        "setCanMoved",
        "(Z)V",
        "canTouched",
        "getCanTouched",
        "setCanTouched",
        "mViewDragLeft",
        "",
        "Ljava/lang/Integer;",
        "mViewDragTop",
        "viewDragHelper",
        "Landroid/support/v4/widget/ViewDragHelper;",
        "addView",
        "",
        "child",
        "Landroid/view/View;",
        "moved",
        "canTouch",
        "touched",
        "change",
        "computeScroll",
        "onInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private canMoved:Z

.field private canTouched:Z

.field private mViewDragLeft:Ljava/lang/Integer;

.field private mViewDragTop:Ljava/lang/Integer;

.field private viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soullistener/viewtransfer/widget/DragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/soullistener/viewtransfer/widget/DragView$1;

    invoke-direct {v1, p0}, Lcom/soullistener/viewtransfer/widget/DragView$1;-><init>(Lcom/soullistener/viewtransfer/widget/DragView;)V

    check-cast v1, Landroid/support/v4/widget/ViewDragHelper$Callback;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canMoved:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 16
    const/4 p2, 0x0

    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/soullistener/viewtransfer/widget/DragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getMViewDragLeft$p(Lcom/soullistener/viewtransfer/widget/DragView;)Ljava/lang/Integer;
    .locals 1
    .param p0, "$this"    # Lcom/soullistener/viewtransfer/widget/DragView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->mViewDragLeft:Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic access$getMViewDragTop$p(Lcom/soullistener/viewtransfer/widget/DragView;)Ljava/lang/Integer;
    .locals 1
    .param p0, "$this"    # Lcom/soullistener/viewtransfer/widget/DragView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->mViewDragTop:Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic access$getViewDragHelper$p(Lcom/soullistener/viewtransfer/widget/DragView;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .param p0, "$this"    # Lcom/soullistener/viewtransfer/widget/DragView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method public static final synthetic access$setMViewDragLeft$p(Lcom/soullistener/viewtransfer/widget/DragView;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "$this"    # Lcom/soullistener/viewtransfer/widget/DragView;
    .param p1, "<set-?>"    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->mViewDragLeft:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setMViewDragTop$p(Lcom/soullistener/viewtransfer/widget/DragView;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "$this"    # Lcom/soullistener/viewtransfer/widget/DragView;
    .param p1, "<set-?>"    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->mViewDragTop:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setViewDragHelper$p(Lcom/soullistener/viewtransfer/widget/DragView;Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 0
    .param p0, "$this"    # Lcom/soullistener/viewtransfer/widget/DragView;
    .param p1, "<set-?>"    # Landroid/support/v4/widget/ViewDragHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public final canMoved(Z)V
    .locals 0
    .param p1, "moved"    # Z

    .line 138
    iput-boolean p1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canMoved:Z

    .line 139
    return-void
.end method

.method public final canTouch(Z)V
    .locals 0
    .param p1, "touched"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canTouched:Z

    .line 133
    return-void
.end method

.method public final change()V
    .locals 2

    .line 21
    const-string v0, "TAG"

    const-string v1, "asd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    .line 109
    iget-boolean v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canTouched:Z

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/soullistener/viewtransfer/widget/DragView;->invalidate()V

    .line 114
    :cond_1
    return-void
.end method

.method public final getCanMoved()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canMoved:Z

    return v0
.end method

.method public final getCanTouched()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canTouched:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/soullistener/viewtransfer/widget/DragView;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public final setCanMoved(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 136
    iput-boolean p1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canMoved:Z

    return-void
.end method

.method public final setCanTouched(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/soullistener/viewtransfer/widget/DragView;->canTouched:Z

    return-void
.end method
