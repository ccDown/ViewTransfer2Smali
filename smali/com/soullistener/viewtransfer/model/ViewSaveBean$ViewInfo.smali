.class public final Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
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
    name = "ViewInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;",
        "Ljava/io/Serializable;",
        "x",
        "",
        "y",
        "width",
        "height",
        "(IIII)V",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "getWidth",
        "setWidth",
        "getX",
        "setX",
        "getY",
        "setY",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    iput p2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    iput p3, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    iput p4, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 37
    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;-><init>(IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;IIIIILjava/lang/Object;)Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->copy(IIII)Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    return v0
.end method

.method public final copy(IIII)Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    iget v3, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    iget v3, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    iget v3, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    iget p1, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    return v0
.end method

.method public final getX()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setHeight(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 37
    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 37
    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    return-void
.end method

.method public final setX(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 37
    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    return-void
.end method

.method public final setY(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 37
    iput p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">>>>>>>>>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
