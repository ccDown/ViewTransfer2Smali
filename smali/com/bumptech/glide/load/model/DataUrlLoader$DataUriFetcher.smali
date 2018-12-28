.class final Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/DataUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataUriFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private final dataUri:Ljava/lang/String;

.field private final reader:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;)V
    .locals 0
    .param p1, "dataUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher<TData;>;"
    .local p2, "reader":Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->dataUri:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;

    .line 75
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 99
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher<TData;>;"
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 90
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher<TData;>;"
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->data:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 94
    :goto_0
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
            "TData;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 110
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher<TData;>;"
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 2
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
            "-TData;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;, "Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher<TData;>;"
    .local p2, "callback":Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;, "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<-TData;>;"
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->dataUri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/model/DataUrlLoader$DataDecoder;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->data:Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/model/DataUrlLoader$DataUriFetcher;->data:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 85
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
