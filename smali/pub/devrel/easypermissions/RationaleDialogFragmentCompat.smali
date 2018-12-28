.class public Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "RationaleDialogFragmentCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RationaleDialogFragmentCompat"


# instance fields
.field private mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

.field private mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
    .locals 9
    .param p0, "rationaleMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "positiveButton"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "negativeButton"    # Ljava/lang/String;
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

    .line 33
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;

    invoke-direct {v0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;-><init>()V

    .line 36
    .local v0, "dialogFragment":Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
    new-instance v8, Lpub/devrel/easypermissions/RationaleDialogConfig;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    .line 38
    .local v1, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    invoke-virtual {v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 62
    :cond_0
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 67
    :cond_1
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_2

    .line 68
    move-object v0, p1

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 71
    :cond_2
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_3

    .line 72
    move-object v0, p1

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 74
    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->setCancelable(Z)V

    .line 90
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogConfig;

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Landroid/os/Bundle;)V

    .line 91
    .local v0, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    new-instance v1, Lpub/devrel/easypermissions/RationaleDialogClickListener;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iget-object v3, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    invoke-direct {v1, p0, v0, v2, v3}, Lpub/devrel/easypermissions/RationaleDialogClickListener;-><init>(Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V

    .line 95
    .local v1, "clickListener":Lpub/devrel/easypermissions/RationaleDialogClickListener;
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;->createSupportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onDetach()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 80
    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 81
    return-void
.end method

.method public showAllowingStateLoss(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    return-void
.end method
