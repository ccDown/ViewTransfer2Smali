.class public abstract Lpub/devrel/easypermissions/helper/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHost:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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

    .line 46
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    .local p1, "host":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lpub/devrel/easypermissions/helper/PermissionHelper;->mHost:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;
    .locals 2
    .param p0, "host"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lpub/devrel/easypermissions/helper/PermissionHelper<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 23
    new-instance v0, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 26
    :cond_0
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lpub/devrel/easypermissions/helper/FragmentActivityPermissionHelper;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lpub/devrel/easypermissions/helper/FragmentActivityPermissionHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;
    .locals 2
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lpub/devrel/easypermissions/helper/PermissionHelper<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 36
    new-instance v0, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method private varargs shouldShowRationale([Ljava/lang/String;)Z
    .locals 5
    .param p1, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 52
    .local v3, "perm":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const/4 v0, 0x1

    return v0

    .line 51
    .end local v3    # "perm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return v1
.end method


# virtual methods
.method public varargs abstract directRequestPermissions(I[Ljava/lang/String;)V
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public getHost()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    iget-object v0, p0, Lpub/devrel/easypermissions/helper/PermissionHelper;->mHost:Ljava/lang/Object;

    return-object v0
.end method

.method public permissionPermanentlyDenied(Ljava/lang/String;)Z
    .locals 1
    .param p1, "perms"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs requestPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 1
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

    .line 65
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    invoke-direct {p0, p6}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRationale([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual/range {p0 .. p6}, Lpub/devrel/easypermissions/helper/PermissionHelper;->showRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0, p5, p6}, Lpub/devrel/easypermissions/helper/PermissionHelper;->directRequestPermissions(I[Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void
.end method

.method public abstract shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs abstract showRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs somePermissionDenied([Ljava/lang/String;)Z
    .locals 1
    .param p1, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRationale([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public somePermissionPermanentlyDenied(Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    .local p1, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "deniedPermission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->permissionPermanentlyDenied(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 78
    .end local v1    # "deniedPermission":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
