.class public abstract Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;
.super Lpub/devrel/easypermissions/helper/PermissionHelper;
.source "BaseSupportPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpub/devrel/easypermissions/helper/PermissionHelper<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BSPermissionsHelper"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;, "Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper<TT;>;"
    .local p1, "host":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.end method

.method public varargs showRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 4
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positiveButton"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "negativeButton"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "requestCode"    # I
    .param p6, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    .local p0, "this":Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;, "Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper<TT;>;"
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 35
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    const-string v1, "RationaleDialogFragmentCompat"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 36
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;

    if-eqz v2, :cond_0

    .line 37
    const-string v2, "BSPermissionsHelper"

    const-string v3, "Found existing fragment, not showing rationale."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 41
    :cond_0
    nop

    .line 42
    invoke-static/range {p1 .. p6}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;

    move-result-object v2

    const-string v3, "RationaleDialogFragmentCompat"

    .line 43
    invoke-virtual {v2, v0, v3}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->showAllowingStateLoss(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    return-void
.end method
