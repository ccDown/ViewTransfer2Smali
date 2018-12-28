.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 322
    .local v0, "job":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<*>;"
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :pswitch_0
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->handleCancelledOnMainThread()V

    .line 331
    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V

    .line 328
    goto :goto_0

    .line 324
    :pswitch_2
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V

    .line 325
    nop

    .line 335
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
