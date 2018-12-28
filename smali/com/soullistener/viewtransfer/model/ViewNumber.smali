.class public final Lcom/soullistener/viewtransfer/model/ViewNumber;
.super Ljava/lang/Object;
.source "ViewSaveBean.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/soullistener/viewtransfer/model/ViewNumber;",
        "Ljava/io/Serializable;",
        "number",
        "",
        "(I)V",
        "getNumber",
        "()I",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
.field private final number:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "number"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/soullistener/viewtransfer/model/ViewNumber;IILjava/lang/Object;)Lcom/soullistener/viewtransfer/model/ViewNumber;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/soullistener/viewtransfer/model/ViewNumber;->copy(I)Lcom/soullistener/viewtransfer/model/ViewNumber;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    return v0
.end method

.method public final copy(I)Lcom/soullistener/viewtransfer/model/ViewNumber;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/soullistener/viewtransfer/model/ViewNumber;

    invoke-direct {v0, p1}, Lcom/soullistener/viewtransfer/model/ViewNumber;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/soullistener/viewtransfer/model/ViewNumber;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/soullistener/viewtransfer/model/ViewNumber;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    iget p1, p1, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getNumber()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewNumber(number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewNumber;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
