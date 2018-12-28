.class Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;
.super Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;
.source "SupportFragmentPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper<",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;-><init>(Ljava/lang/Object;)V

    .line 16
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

    .line 25
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
