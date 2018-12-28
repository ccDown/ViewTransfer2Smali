.class public Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadStatus"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field private final engineJob:Lcom/bumptech/glide/load/engine/EngineJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V
    .locals 0
    .param p1, "cb"    # Lcom/bumptech/glide/request/ResourceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;)V"
        }
    .end annotation

    .line 351
    .local p2, "engineJob":Lcom/bumptech/glide/load/engine/EngineJob;, "Lcom/bumptech/glide/load/engine/EngineJob<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    .line 353
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 354
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/EngineJob;->removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 358
    return-void
.end method
