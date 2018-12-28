.class public Lcom/soullistener/viewtransfer/model/ViewTreeBean;
.super Ljava/lang/Object;
.source "ViewTreeBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private viewSaveBean:Lcom/soullistener/viewtransfer/model/ViewSaveBean;

.field private viewTreeBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/soullistener/viewtransfer/model/ViewTreeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/soullistener/viewtransfer/model/ViewSaveBean;)V
    .locals 0
    .param p2, "viewSaveBean"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/soullistener/viewtransfer/model/ViewTreeBean;",
            ">;",
            "Lcom/soullistener/viewtransfer/model/ViewSaveBean;",
            ")V"
        }
    .end annotation

    .line 27
    .local p1, "viewTreeBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/soullistener/viewtransfer/model/ViewTreeBean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    .line 29
    iput-object p2, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewSaveBean:Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    .line 30
    return-void
.end method


# virtual methods
.method public getChildViewCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewSaveBean()Lcom/soullistener/viewtransfer/model/ViewSaveBean;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewSaveBean:Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    return-object v0
.end method

.method public getViewTreeBeans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/soullistener/viewtransfer/model/ViewTreeBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method public printViewTreeBean()V
    .locals 0

    .line 54
    return-void
.end method

.method public setViewSaveBean(Lcom/soullistener/viewtransfer/model/ViewSaveBean;)V
    .locals 0
    .param p1, "viewSaveBean"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    .line 45
    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewSaveBean:Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    .line 46
    return-void
.end method

.method public setViewTreeBeans(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/soullistener/viewtransfer/model/ViewTreeBean;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "viewTreeBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/soullistener/viewtransfer/model/ViewTreeBean;>;"
    iput-object p1, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewTreeBean ChildViewCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->getChildViewCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewSaveBean:Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    invoke-virtual {v1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->viewTreeBeans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    .line 63
    .local v2, "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    invoke-virtual {v2}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .end local v2    # "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
