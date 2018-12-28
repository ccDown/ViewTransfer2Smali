.class Lpub/devrel/easypermissions/RationaleDialogClickListener;
.super Ljava/lang/Object;
.source "RationaleDialogClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

.field private mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

.field private mHost:Ljava/lang/Object;

.field private mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;


# direct methods
.method constructor <init>(Lpub/devrel/easypermissions/RationaleDialogFragment;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V
    .locals 1
    .param p1, "dialogFragment"    # Lpub/devrel/easypermissions/RationaleDialogFragment;
    .param p2, "config"    # Lpub/devrel/easypermissions/RationaleDialogConfig;
    .param p3, "callbacks"    # Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
    .param p4, "dialogCallback"    # Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    .line 45
    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 46
    iput-object p4, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 47
    return-void
.end method

.method constructor <init>(Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V
    .locals 1
    .param p1, "compatDialogFragment"    # Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
    .param p2, "config"    # Lpub/devrel/easypermissions/RationaleDialogConfig;
    .param p3, "callbacks"    # Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
    .param p4, "rationaleCallbacks"    # Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    .line 32
    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 33
    iput-object p4, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 35
    return-void
.end method

.method private notifyPermissionDenied()V
    .locals 3

    .line 73
    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v1, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget-object v2, v2, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsDenied(ILjava/util/List;)V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 51
    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v0, v0, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    .line 52
    .local v0, "requestCode":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 53
    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget-object v1, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    .line 54
    .local v1, "permissions":[Ljava/lang/String;
    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    invoke-interface {v2, v0}, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;->onRationaleAccepted(I)V

    .line 57
    :cond_0
    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    instance-of v2, v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-static {v2}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->directRequestPermissions(I[Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->directRequestPermissions(I[Ljava/lang/String;)V

    .line 64
    .end local v1    # "permissions":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 62
    .restart local v1    # "permissions":[Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Host must be an Activity or Fragment!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v1, :cond_4

    .line 66
    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    invoke-interface {v1, v0}, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;->onRationaleDenied(I)V

    .line 68
    :cond_4
    invoke-direct {p0}, Lpub/devrel/easypermissions/RationaleDialogClickListener;->notifyPermissionDenied()V

    .line 70
    :goto_1
    return-void
.end method
