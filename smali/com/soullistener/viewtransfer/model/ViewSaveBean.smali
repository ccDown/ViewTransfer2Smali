.class public final Lcom/soullistener/viewtransfer/model/ViewSaveBean;
.super Ljava/lang/Object;
.source "ViewSaveBean.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;,
        Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;,
        Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0003!\"#B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/soullistener/viewtransfer/model/ViewSaveBean;",
        "Ljava/io/Serializable;",
        "viewContent",
        "Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;",
        "viewResource",
        "Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;",
        "viewInfo",
        "Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;",
        "(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)V",
        "getViewContent",
        "()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;",
        "setViewContent",
        "(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;)V",
        "getViewInfo",
        "()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;",
        "setViewInfo",
        "(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)V",
        "getViewResource",
        "()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;",
        "setViewResource",
        "(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "ViewContent",
        "ViewInfo",
        "ViewResource",
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
.field private viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)V
    .locals 1
    .param p1, "viewContent"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "viewResource"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "viewInfo"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewResource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    iput-object p2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    iput-object p3, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/soullistener/viewtransfer/model/ViewSaveBean;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;ILjava/lang/Object;)Lcom/soullistener/viewtransfer/model/ViewSaveBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->copy(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    return-object v0
.end method

.method public final component2()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    return-object v0
.end method

.method public final component3()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    return-object v0
.end method

.method public final copy(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)Lcom/soullistener/viewtransfer/model/ViewSaveBean;
    .locals 1
    .param p1    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "viewContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewResource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;-><init>(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    iget-object v1, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    iget-object v1, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    iget-object p1, p1, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getViewContent()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    return-object v0
.end method

.method public final getViewInfo()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    return-object v0
.end method

.method public final getViewResource()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setViewContent(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    return-void
.end method

.method public final setViewInfo(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    return-void
.end method

.method public final setViewResource(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewSaveBean(viewContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewContent:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewResource:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->viewInfo:Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
