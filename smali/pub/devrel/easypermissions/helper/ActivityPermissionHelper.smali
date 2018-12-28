.class Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;
.super Lpub/devrel/easypermissions/helper/PermissionHelper;
.source "ActivityPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpub/devrel/easypermissions/helper/PermissionHelper<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActPermissionHelper"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "host"    # Landroid/app/Activity;

    .line 21
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;-><init>(Ljava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method public varargs directRequestPermissions(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p2, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs showRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 8
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

    .line 46
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 49
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v1, "RationaleDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 50
    .local v1, "fragment":Landroid/app/Fragment;
    instance-of v2, v1, Lpub/devrel/easypermissions/RationaleDialogFragment;

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "ActPermissionHelper"

    const-string v3, "Found existing fragment, not showing rationale."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 55
    :cond_0
    nop

    .line 56
    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lpub/devrel/easypermissions/RationaleDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragment;

    move-result-object v2

    const-string v3, "RationaleDialogFragment"

    .line 57
    invoke-virtual {v2, v0, v3}, Lpub/devrel/easypermissions/RationaleDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 58
    return-void
.end method
