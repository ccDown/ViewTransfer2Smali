.class public Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestCoordinator;
.implements Lcom/bumptech/glide/request/Request;


# instance fields
.field private full:Lcom/bumptech/glide/request/Request;

.field private isRunning:Z

.field private final parent:Lcom/bumptech/glide/request/RequestCoordinator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private thumb:Lcom/bumptech/glide/request/Request;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
    .locals 0
    .param p1, "parent"    # Lcom/bumptech/glide/request/RequestCoordinator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 25
    return-void
.end method

.method private parentCanNotifyCleared()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanNotifyStatusChanged()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanSetImage()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentIsAnyResourceSet()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public begin()V
    .locals 1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunning:Z

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 121
    :cond_1
    return-void
.end method

.method public canNotifyCleared(Lcom/bumptech/glide/request/Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 60
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanNotifyCleared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canSetImage(Lcom/bumptech/glide/request/Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 40
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentCanSetImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isRunning:Z

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 128
    return-void
.end method

.method public isAnyResourceSet()Z
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parentIsAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCleared()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCleared()Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z
    .locals 4
    .param p1, "o"    # Lcom/bumptech/glide/request/Request;

    .line 172
    instance-of v0, p1, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    .line 174
    .local v0, "that":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    iget-object v3, v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    iget-object v3, v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 175
    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 v1, 0x1

    nop

    .line 174
    :cond_2
    return v1

    .line 177
    .end local v0    # "that":Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
    :cond_3
    return v1
.end method

.method public isFailed()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isFailed()Z

    move-result v0

    return v0
.end method

.method public isResourceSet()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onRequestFailed(Lcom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestFailed(Lcom/bumptech/glide/request/Request;)V

    .line 101
    :cond_1
    return-void
.end method

.method public onRequestSuccess(Lcom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->parent:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 90
    :cond_2
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 168
    return-void
.end method

.method public setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "full"    # Lcom/bumptech/glide/request/Request;
    .param p2, "thumb"    # Lcom/bumptech/glide/request/Request;

    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 29
    iput-object p2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 30
    return-void
.end method
