.class Lcom/bumptech/glide/load/engine/ActiveResources$1;
.super Ljava/lang/Object;
.source "ActiveResources.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/ActiveResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/ActiveResources;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources$1;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources$1;->this$0:Lcom/bumptech/glide/load/engine/ActiveResources;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    .line 31
    return v1

    .line 33
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
