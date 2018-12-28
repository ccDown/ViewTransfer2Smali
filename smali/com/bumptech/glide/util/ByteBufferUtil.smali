.class public final Lcom/bumptech/glide/util/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;,
        Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    }
.end annotation


# static fields
.field private static final BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final BUFFER_SIZE:I = 0x4000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "raf":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 33
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 35
    .local v2, "fileLength":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 39
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 43
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 44
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v1, v4

    .line 45
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    move-object v4, v1

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v1, :cond_0

    .line 49
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v5

    .line 54
    :cond_0
    :goto_0
    nop

    .line 56
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    goto :goto_1

    .line 57
    :catch_1
    move-exception v5

    .line 45
    :goto_1
    return-object v4

    .line 40
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "File unsuitable for memory mapping"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "File too large to map into memory"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    .end local v2    # "fileLength":J
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 49
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 52
    goto :goto_2

    .line 50
    :catch_2
    move-exception v3

    .line 54
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 56
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 59
    goto :goto_3

    .line 57
    :catch_3
    move-exception v3

    .line 59
    :cond_4
    :goto_3
    throw v2
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 140
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 141
    .local v2, "buffer":[B
    if-nez v2, :cond_0

    .line 142
    new-array v2, v1, [B

    .line 146
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v3, v1

    .local v3, "n":I
    const/4 v4, 0x0

    if-ltz v1, :cond_1

    .line 147
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 150
    :cond_1
    sget-object v1, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 155
    .local v1, "bytes":[B
    array-length v5, v1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v4
.end method

.method private static getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;-><init>([BII)V

    return-object v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toBytes(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v0

    .line 120
    .local v0, "safeArray":Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    iget-object v2, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 124
    .local v1, "toCopy":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    .line 125
    .local v2, "result":[B
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    move-object v1, v2

    .end local v2    # "result":[B
    .local v1, "result":[B
    :goto_0
    return-object v1
.end method

.method public static toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 69
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 70
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    move-object v2, v3

    .line 71
    invoke-virtual {v2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 72
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 73
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 74
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v2, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 83
    :cond_0
    :goto_0
    nop

    .line 85
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 88
    :goto_1
    goto :goto_2

    .line 86
    :catch_1
    move-exception v0

    goto :goto_1

    .line 91
    :goto_2
    return-void

    .line 76
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 78
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    goto :goto_3

    .line 79
    :catch_2
    move-exception v3

    .line 83
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 85
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 88
    goto :goto_4

    .line 86
    :catch_3
    move-exception v3

    .line 88
    :cond_2
    :goto_4
    throw v0
.end method

.method public static toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 133
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static toStream(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "os"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v0

    .line 96
    .local v0, "safeArray":Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    iget v2, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v3, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v4, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 99
    :cond_0
    sget-object v1, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 100
    .local v1, "buffer":[B
    if-nez v1, :cond_1

    .line 101
    const/16 v2, 0x4000

    new-array v1, v2, [B

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_2

    .line 105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 106
    .local v2, "toRead":I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    .end local v2    # "toRead":I
    goto :goto_0

    .line 110
    :cond_2
    sget-object v2, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    .end local v1    # "buffer":[B
    :goto_1
    return-void
.end method
