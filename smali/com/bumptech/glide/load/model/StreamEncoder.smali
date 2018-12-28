.class public Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamEncoder"


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0
    .param p1, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 24
    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 6
    .param p1, "data"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v1, [B

    const/high16 v2, 0x10000

    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 29
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 30
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 32
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 35
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v1, 0x1

    .line 44
    .end local v4    # "read":I
    nop

    .line 46
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 47
    :catch_0
    move-exception v3

    goto :goto_2

    .line 44
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 39
    :catch_1
    move-exception v3

    .line 40
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "StreamEncoder"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    const-string v4, "StreamEncoder"

    const-string v5, "Failed to encode data onto the OutputStream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v2, :cond_2

    .line 46
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 49
    :goto_1
    goto :goto_2

    .line 47
    :catch_2
    move-exception v3

    .line 51
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 52
    nop

    .line 53
    return v1

    .line 44
    :goto_3
    if-eqz v2, :cond_3

    .line 46
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 49
    goto :goto_4

    .line 47
    :catch_3
    move-exception v4

    .line 51
    :cond_3
    :goto_4
    iget-object v4, p0, Lcom/bumptech/glide/load/model/StreamEncoder;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    throw v3
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z

    move-result p1

    return p1
.end method
