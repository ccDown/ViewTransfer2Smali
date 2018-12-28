.class final Lcom/bumptech/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher;
.super Ljava/lang/Object;
.source "ByteBufferFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ByteBufferFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher;->file:Ljava/io/File;

    .line 58
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 85
    return-void
.end method

.method public cleanup()V
    .locals 0

    .line 80
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 90
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 96
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 3
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-Ljava/nio/ByteBuffer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/util/ByteBufferUtil;->fromFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v0, "result":Ljava/nio/ByteBuffer;
    nop

    .line 71
    nop

    .line 74
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 66
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ByteBufferFileLoader"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "ByteBufferFileLoader"

    const-string v2, "Failed to obtain ByteBuffer for file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 71
    return-void
.end method
