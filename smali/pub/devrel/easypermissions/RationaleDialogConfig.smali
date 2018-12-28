.class Lpub/devrel/easypermissions/RationaleDialogConfig;
.super Ljava/lang/Object;
.source "RationaleDialogConfig.java"


# static fields
.field private static final KEY_NEGATIVE_BUTTON:Ljava/lang/String; = "negativeButton"

.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final KEY_POSITIVE_BUTTON:Ljava/lang/String; = "positiveButton"

.field private static final KEY_RATIONALE_MESSAGE:Ljava/lang/String; = "rationaleMsg"

.field private static final KEY_REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field private static final KEY_THEME:Ljava/lang/String; = "theme"


# instance fields
.field negativeButton:Ljava/lang/String;

.field permissions:[Ljava/lang/String;

.field positiveButton:Ljava/lang/String;

.field rationaleMsg:Ljava/lang/String;

.field requestCode:I

.field theme:I


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "positiveButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:Ljava/lang/String;

    .line 46
    const-string v0, "negativeButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:Ljava/lang/String;

    .line 47
    const-string v0, "rationaleMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    .line 48
    const-string v0, "theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->theme:I

    .line 49
    const-string v0, "requestCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    .line 50
    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveButton"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "negativeButton"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rationaleMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "requestCode"    # I
    .param p6, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    .line 39
    iput p4, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->theme:I

    .line 40
    iput p5, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    .line 41
    iput-object p6, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method createFrameworkDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 82
    iget v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->theme:I

    if-lez v0, :cond_0

    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->theme:I

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 87
    return-object v1
.end method

.method createSupportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 67
    iget v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->theme:I

    if-lez v0, :cond_0

    .line 68
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget v1, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->theme:I

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:Ljava/lang/String;

    .line 75
    invoke-virtual {v1, v2, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 72
    return-object v1
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "positiveButton"

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "negativeButton"

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "rationaleMsg"

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "theme"

    iget v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->theme:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v1, "requestCode"

    iget v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v1, "permissions"

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    return-object v0
.end method
