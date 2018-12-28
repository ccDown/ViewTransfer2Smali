.class public final Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ViewRestoreAvtivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->setContentView(I)V

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "viewsave.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->file2Bean(Ljava/io/File;)Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    move-result-object v1

    .line 25
    .local v1, "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    sget v2, Lcom/soullistener/viewtransfer/R$id;->ll_viewrestore:I

    invoke-virtual {p0, v2}, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->viewTreeBeanAdded(Landroid/view/ViewGroup;Lcom/soullistener/viewtransfer/model/ViewTreeBean;)Landroid/view/View;

    .line 26
    sget v2, Lcom/soullistener/viewtransfer/R$id;->ll_viewrestore:I

    invoke-virtual {p0, v2}, Lcom/soullistener/viewtransfer/ViewRestoreAvtivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->rootViewToViewTreeBean(Landroid/view/View;)Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    move-result-object v2

    .line 28
    .local v2, "viewList":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    invoke-static {v0, v2}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->bean2File(Ljava/io/File;Lcom/soullistener/viewtransfer/model/ViewTreeBean;)Z

    .line 30
    return-void
.end method
