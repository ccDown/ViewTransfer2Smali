.class public final Lcom/bumptech/glide/load/data/BufferedOutputStream;
.super Ljava/io/OutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field private arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private buffer:[B

.field private index:I

.field private final out:Ljava/io/OutputStream;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .param p3, "bufferSize"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 28
    const-class v0, [B

    invoke-interface {p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    .line 29
    return-void
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    iget v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    iput v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    .line 78
    :cond_0
    return-void
.end method

.method private maybeFlushBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flushBuffer()V

    .line 84
    :cond_0
    return-void
.end method

.method private release()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 92
    nop

    .line 93
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->release()V

    .line 94
    return-void

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->flushBuffer()V

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 71
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    iget v1, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->maybeFlushBuffer()V

    .line 35
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->write([BII)V

    .line 40
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "b"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialOffset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "writtenSoFar":I
    :cond_0
    sub-int v1, p3, v0

    .line 47
    .local v1, "remainingToWrite":I
    add-int v2, p2, v0

    .line 50
    .local v2, "currentOffset":I
    iget v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    return-void

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    sub-int/2addr v3, v4

    .line 56
    .local v3, "remainingSpaceInBuffer":I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 58
    .local v4, "totalBytesToWriteToBuffer":I
    iget-object v5, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->buffer:[B

    iget v6, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    invoke-static {p1, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v5, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/bumptech/glide/load/data/BufferedOutputStream;->index:I

    .line 61
    add-int/2addr v0, v4

    .line 63
    invoke-direct {p0}, Lcom/bumptech/glide/load/data/BufferedOutputStream;->maybeFlushBuffer()V

    .line 64
    .end local v1    # "remainingToWrite":I
    .end local v2    # "currentOffset":I
    .end local v3    # "remainingSpaceInBuffer":I
    .end local v4    # "totalBytesToWriteToBuffer":I
    if-lt v0, p3, :cond_0

    .line 65
    return-void
.end method
