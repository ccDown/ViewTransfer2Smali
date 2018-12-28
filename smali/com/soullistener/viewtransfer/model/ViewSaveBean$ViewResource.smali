.class public final Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
.super Ljava/lang/Object;
.source "ViewSaveBean.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soullistener/viewtransfer/model/ViewSaveBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewResource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;",
        "Ljava/io/Serializable;",
        "backColor",
        "",
        "backImage",
        "",
        "(ILjava/lang/String;)V",
        "getBackColor",
        "()I",
        "setBackColor",
        "(I)V",
        "getBackImage",
        "()Ljava/lang/String;",
        "setBackImage",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private backColor:I

.field private backImage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2, v0}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "backColor"    # I
    .param p2, "backImage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "backImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    iput-object p2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 28
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, ""

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;ILjava/lang/String;ILjava/lang/Object;)Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->copy(ILjava/lang/String;)Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "backImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    invoke-direct {v0, p1, p2}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    iget v3, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    iget-object p1, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getBackColor()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    return v0
.end method

.method public final getBackImage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBackColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 28
    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    return-void
.end method

.method public final setBackImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",backImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->backImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
