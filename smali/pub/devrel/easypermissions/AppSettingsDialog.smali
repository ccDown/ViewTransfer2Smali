.class public Lpub/devrel/easypermissions/AppSettingsDialog;
.super Ljava/lang/Object;
.source "AppSettingsDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpub/devrel/easypermissions/AppSettingsDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SETTINGS_REQ_CODE:I = 0x3ebd

.field static final EXTRA_APP_SETTINGS:Ljava/lang/String; = "extra_app_settings"


# instance fields
.field private mActivityOrFragment:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mIntentFlags:I

.field private final mNegativeButtonText:Ljava/lang/String;

.field private final mPositiveButtonText:Ljava/lang/String;

.field private final mRationale:Ljava/lang/String;

.field private final mRequestCode:I

.field private final mThemeResId:I
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation
.end field

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lpub/devrel/easypermissions/AppSettingsDialog$1;

    invoke-direct {v0}, Lpub/devrel/easypermissions/AppSettingsDialog$1;-><init>()V

    sput-object v0, Lpub/devrel/easypermissions/AppSettingsDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpub/devrel/easypermissions/AppSettingsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lpub/devrel/easypermissions/AppSettingsDialog$1;

    .line 25
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "activityOrFragment"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p3, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "positiveButtonText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "negativeButtonText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "requestCode"    # I
    .param p8, "intentFlags"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->setActivityOrFragment(Ljava/lang/Object;)V

    .line 74
    iput p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    .line 75
    iput-object p3, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 79
    iput p7, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    .line 80
    iput p8, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILpub/devrel/easypermissions/AppSettingsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # Lpub/devrel/easypermissions/AppSettingsDialog$1;

    .line 25
    invoke-direct/range {p0 .. p8}, Lpub/devrel/easypermissions/AppSettingsDialog;-><init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static fromIntent(Landroid/content/Intent;Landroid/app/Activity;)Lpub/devrel/easypermissions/AppSettingsDialog;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 84
    const-string v0, "extra_app_settings"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/AppSettingsDialog;

    .line 85
    .local v0, "dialog":Lpub/devrel/easypermissions/AppSettingsDialog;
    invoke-direct {v0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->setActivityOrFragment(Ljava/lang/Object;)V

    .line 86
    return-object v0
.end method

.method private setActivityOrFragment(Ljava/lang/Object;)V
    .locals 3
    .param p1, "activityOrFragment"    # Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 93
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 94
    :cond_0
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 95
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startForResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method getIntentFlags()I
    .locals 1

    .line 153
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    return v0
.end method

.method public show()V
    .locals 1

    .line 113
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->createShowDialogIntent(Landroid/content/Context;Lpub/devrel/easypermissions/AppSettingsDialog;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lpub/devrel/easypermissions/AppSettingsDialog;->startForResult(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method showDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;
    .locals 3
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 122
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    if-lez v0, :cond_0

    .line 123
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v2, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 127
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .line 143
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
