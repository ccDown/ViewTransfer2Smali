.class public Lcom/bumptech/glide/util/ViewPreloadSizeProvider;
.super Ljava/lang/Object;
.source "ViewPreloadSizeProvider.java"

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private size:[I

.field private viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    .local p0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 46
    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adapterPosition"    # I
    .param p3, "itemPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    iget-object v1, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public onSizeReady(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 60
    .local p0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 62
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    .local p0, "this":Lcom/bumptech/glide/util/ViewPreloadSizeProvider;, "Lcom/bumptech/glide/util/ViewPreloadSizeProvider<TT;>;"
    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1, p0}, Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    .line 78
    return-void

    .line 75
    :cond_1
    :goto_0
    return-void
.end method
