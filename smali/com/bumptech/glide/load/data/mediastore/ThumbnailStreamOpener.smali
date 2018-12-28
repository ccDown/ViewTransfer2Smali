.class Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "ThumbnailStreamOpener.java"


# static fields
.field private static final DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

.field private static final TAG:Ljava/lang/String; = "ThumbStreamOpener"


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

.field private final service:Lcom/bumptech/glide/load/data/mediastore/FileService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/mediastore/FileService;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "service"    # Lcom/bumptech/glide/load/data/mediastore/FileService;
    .param p3, "query"    # Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;
    .param p4, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .param p5, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/mediastore/FileService;",
            "Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    .line 42
    iput-object p3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    .line 43
    iput-object p4, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 44
    iput-object p5, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->parsers:Ljava/util/List;

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .locals 6
    .param p2, "query"    # Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;
    .param p3, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 32
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    sget-object v2, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V

    .line 33
    return-void
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;->query(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 98
    :cond_2
    const/4 v1, 0x0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_3
    return-object v1
.end method

.method private isValid(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/mediastore/FileService;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/data/mediastore/FileService;->length(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getOrientation(Landroid/net/Uri;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 52
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->parsers:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 59
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 54
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ThumbStreamOpener"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v2, "ThumbStreamOpener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v0, :cond_2

    .line 61
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    :goto_1
    goto :goto_2

    .line 62
    :catch_2
    move-exception v1

    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    const/4 v1, -0x1

    return v1

    .line 59
    :goto_3
    if-eqz v0, :cond_3

    .line 61
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 64
    goto :goto_4

    .line 62
    :catch_3
    move-exception v2

    .line 64
    :cond_3
    :goto_4
    throw v1
.end method

.method public open(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 73
    return-object v2

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/data/mediastore/FileService;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 77
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->isValid(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    return-object v2

    .line 81
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    .local v2, "thumbnailUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NPE opening uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v3}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/FileNotFoundException;

    throw v4
.end method
