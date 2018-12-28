.class public final Lpub/devrel/easypermissions/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpub/devrel/easypermissions/PermissionRequest$Builder;
    }
.end annotation


# instance fields
.field private final mHelper:Lpub/devrel/easypermissions/helper/PermissionHelper;

.field private final mNegativeButtonText:Ljava/lang/String;

.field private final mPerms:[Ljava/lang/String;

.field private final mPositiveButtonText:Ljava/lang/String;

.field private final mRationale:Ljava/lang/String;

.field private final mRequestCode:I

.field private final mTheme:I


# direct methods
.method private constructor <init>(Lpub/devrel/easypermissions/helper/PermissionHelper;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "helper"    # Lpub/devrel/easypermissions/helper/PermissionHelper;
    .param p2, "perms"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "rationale"    # Ljava/lang/String;
    .param p5, "positiveButtonText"    # Ljava/lang/String;
    .param p6, "negativeButtonText"    # Ljava/lang/String;
    .param p7, "theme"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lpub/devrel/easypermissions/PermissionRequest;->mHelper:Lpub/devrel/easypermissions/helper/PermissionHelper;

    .line 40
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPerms:[Ljava/lang/String;

    .line 41
    iput p3, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRequestCode:I

    .line 42
    iput-object p4, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRationale:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPositiveButtonText:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lpub/devrel/easypermissions/PermissionRequest;->mNegativeButtonText:Ljava/lang/String;

    .line 45
    iput p7, p0, Lpub/devrel/easypermissions/PermissionRequest;->mTheme:I

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lpub/devrel/easypermissions/helper/PermissionHelper;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILpub/devrel/easypermissions/PermissionRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lpub/devrel/easypermissions/helper/PermissionHelper;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # I
    .param p8, "x7"    # Lpub/devrel/easypermissions/PermissionRequest$1;

    .line 23
    invoke-direct/range {p0 .. p7}, Lpub/devrel/easypermissions/PermissionRequest;-><init>(Lpub/devrel/easypermissions/helper/PermissionHelper;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 86
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    move-object v2, p1

    check-cast v2, Lpub/devrel/easypermissions/PermissionRequest;

    .line 90
    .local v2, "request":Lpub/devrel/easypermissions/PermissionRequest;
    iget-object v3, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPerms:[Ljava/lang/String;

    iget-object v4, v2, Lpub/devrel/easypermissions/PermissionRequest;->mPerms:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRequestCode:I

    iget v4, v2, Lpub/devrel/easypermissions/PermissionRequest;->mRequestCode:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 86
    .end local v2    # "request":Lpub/devrel/easypermissions/PermissionRequest;
    :cond_3
    :goto_1
    return v1
.end method

.method public getHelper()Lpub/devrel/easypermissions/helper/PermissionHelper;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mHelper:Lpub/devrel/easypermissions/helper/PermissionHelper;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 75
    iget-object v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mNegativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getPerms()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 56
    iget-object v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPerms:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 70
    iget-object v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPositiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getRationale()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 65
    iget-object v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRationale:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 60
    iget v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRequestCode:I

    return v0
.end method

.method public getTheme()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 80
    iget v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mTheme:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 95
    iget-object v0, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPerms:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRequestCode:I

    add-int/2addr v1, v2

    .line 97
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionRequest{mHelper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpub/devrel/easypermissions/PermissionRequest;->mHelper:Lpub/devrel/easypermissions/helper/PermissionHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPerms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPerms:[Ljava/lang/String;

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRationale=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpub/devrel/easypermissions/PermissionRequest;->mRationale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPositiveButtonText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpub/devrel/easypermissions/PermissionRequest;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNegativeButtonText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpub/devrel/easypermissions/PermissionRequest;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lpub/devrel/easypermissions/PermissionRequest;->mTheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method
