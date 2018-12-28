.class Lpub/devrel/easypermissions/helper/FragmentActivityPermissionHelper;
.super Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;
.source "FragmentActivityPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper<",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "host"    # Landroid/support/v4/app/FragmentActivity;

    .line 16
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/BaseSupportPermissionsHelper;-><init>(Ljava/lang/Object;)V

    .line 17
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
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/FragmentActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p2, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/FragmentActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/FragmentActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/FragmentActivityPermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
