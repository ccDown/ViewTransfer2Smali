.class public final Lcom/soullistener/viewtransfer/ViewSaveActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ViewSaveActivity.kt"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u001e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0019H\u0016J\u001e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0019H\u0016J+\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016\u00a2\u0006\u0002\u0010\u001fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/soullistener/viewtransfer/ViewSaveActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;",
        "()V",
        "permission",
        "",
        "getPermission",
        "()Z",
        "setPermission",
        "(Z)V",
        "perms",
        "",
        "",
        "getPerms",
        "()[Ljava/lang/String;",
        "setPerms",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPermissionsDenied",
        "requestCode",
        "",
        "",
        "onPermissionsGranted",
        "onRequestPermissionsResult",
        "permissions",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
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

.field private permission:Z

.field private perms:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->perms:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getPermission()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->permission:Z

    return v0
.end method

.method public final getPerms()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->perms:[Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/soullistener/viewtransfer/ViewSaveActivity;->setContentView(I)V

    .line 25
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->perms:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    nop

    .line 31
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->perms:[Ljava/lang/String;

    aget-object v2, v2, v4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 32
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v1

    .line 30
    invoke-static {v0, v2, v4, v3}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 36
    :cond_0
    sget v0, Lcom/soullistener/viewtransfer/R$id;->textview:I

    invoke-virtual {p0, v0}, Lcom/soullistener/viewtransfer/ViewSaveActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/soullistener/viewtransfer/ViewSaveActivity$onCreate$1;-><init>(Lcom/soullistener/viewtransfer/ViewSaveActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "perms"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->permission:Z

    .line 73
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "perms"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "perms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->permission:Z

    .line 69
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public final setPermission(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->permission:Z

    return-void
.end method

.method public final setPerms([Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/soullistener/viewtransfer/ViewSaveActivity;->perms:[Ljava/lang/String;

    return-void
.end method
