.class public Lpub/devrel/easypermissions/RationaleDialogFragment;
.super Landroid/app/DialogFragment;
.source "RationaleDialogFragment.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RationaleDialogFragment"


# instance fields
.field private mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

.field private mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

.field private mStateSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mStateSaved:Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragment;
    .locals 9
    .param p0, "positiveButton"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "negativeButton"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rationaleMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogFragment;

    invoke-direct {v0}, Lpub/devrel/easypermissions/RationaleDialogFragment;-><init>()V

    .line 38
    .local v0, "dialogFragment":Lpub/devrel/easypermissions/RationaleDialogFragment;
    new-instance v8, Lpub/devrel/easypermissions/RationaleDialogConfig;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    .line 40
    .local v1, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    invoke-virtual {v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 52
    :cond_0
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 58
    :cond_1
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_2

    .line 59
    move-object v0, p1

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 62
    :cond_2
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_3

    .line 63
    move-object v0, p1

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 65
    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setCancelable(Z)V

    .line 105
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogConfig;

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Landroid/os/Bundle;)V

    .line 106
    .local v0, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    new-instance v1, Lpub/devrel/easypermissions/RationaleDialogClickListener;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iget-object v3, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    invoke-direct {v1, p0, v0, v2, v3}, Lpub/devrel/easypermissions/RationaleDialogClickListener;-><init>(Lpub/devrel/easypermissions/RationaleDialogFragment;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V

    .line 110
    .local v1, "clickListener":Lpub/devrel/easypermissions/RationaleDialogClickListener;
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;->createFrameworkDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 96
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mStateSaved:Z

    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 85
    :cond_0
    iget-boolean v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mStateSaved:Z

    if-eqz v0, :cond_1

    .line 86
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0, p1, p2}, Lpub/devrel/easypermissions/RationaleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    return-void
.end method
