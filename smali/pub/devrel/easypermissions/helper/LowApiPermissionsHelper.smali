.class Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;
.super Lpub/devrel/easypermissions/helper/PermissionHelper;
.source "LowApiPermissionsHelper.java"


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

    .line 14
    .local p0, "this":Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;, "Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper<TT;>;"
    .local p1, "host":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;-><init>(Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public varargs directRequestPermissions(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    .local p0, "this":Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;, "Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be requesting permissions on API < 23!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    .line 39
    .local p0, "this":Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;, "Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper<TT;>;"
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;->getHost()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    .local p0, "this":Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;, "Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public varargs showRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 2
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

    .line 34
    .local p0, "this":Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;, "Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be requesting permissions on API < 23!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
