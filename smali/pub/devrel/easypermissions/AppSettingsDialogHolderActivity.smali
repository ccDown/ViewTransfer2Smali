.class public Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppSettingsDialogHolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final APP_SETTINGS_RC:I = 0x1d6e


# instance fields
.field private mDialog:Landroid/support/v7/app/AlertDialog;

.field private mIntentFlags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static createShowDialogIntent(Landroid/content/Context;Lpub/devrel/easypermissions/AppSettingsDialog;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Lpub/devrel/easypermissions/AppSettingsDialog;

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_app_settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    invoke-virtual {p0, p2, p3}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    .line 64
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 46
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 48
    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mIntentFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    const/16 v1, 0x1d6e

    invoke-virtual {p0, v0, v1}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->fromIntent(Landroid/content/Intent;Landroid/app/Activity;)Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object v0

    .line 32
    .local v0, "appSettingsDialog":Lpub/devrel/easypermissions/AppSettingsDialog;
    invoke-virtual {v0}, Lpub/devrel/easypermissions/AppSettingsDialog;->getIntentFlags()I

    move-result v1

    iput v1, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mIntentFlags:I

    .line 33
    invoke-virtual {v0, p0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->showDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 39
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 42
    :cond_0
    return-void
.end method
