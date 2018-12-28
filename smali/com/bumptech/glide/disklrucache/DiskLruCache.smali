.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 16
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 147
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 156
    iput-wide v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 159
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$DiskLruCacheThreadFactory;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 162
    new-instance v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    iput-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 179
    iput-object v1, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 180
    move/from16 v2, p2

    iput v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 181
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 182
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 183
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.bkp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 184
    move/from16 v3, p3

    iput v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 185
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 186
    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 86
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .param p1, "x1"    # Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$502(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 622
    return-void

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 11
    .param p1, "editor"    # Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 504
    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-result-object v0

    .line 505
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    .line 510
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 512
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 516
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 511
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 514
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Newly created entry didn\'t create value for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    .end local v2    # "i":I
    :cond_2
    nop

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_5

    .line 524
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 525
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_3

    .line 526
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 527
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 528
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 529
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    move-wide v4, v5

    .line 530
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 531
    .local v6, "newLength":J
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 532
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    const/4 v10, 0x0

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 533
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_2

    .line 535
    :cond_3
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 523
    .end local v2    # "dirty":Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 539
    .end local v1    # "i":I
    :cond_5
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 540
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 541
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz v1, :cond_6

    .line 542
    invoke-static {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 543
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "CLEAN"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 545
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 546
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 547
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 549
    if-eqz p2, :cond_7

    .line 550
    iget-wide v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1302(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J

    goto :goto_3

    .line 553
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 556
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 557
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 559
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 561
    iget-wide v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_8

    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 562
    :cond_8
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :cond_9
    monitor-exit p0

    return-void

    .line 506
    :cond_a
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local p1    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 392
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 447
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 448
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 449
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 450
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1300(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 451
    :cond_0
    monitor-exit p0

    return-object v3

    .line 453
    :cond_1
    if-nez v0, :cond_2

    .line 454
    :try_start_1
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    move-object v0, v1

    .line 455
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_2
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 457
    monitor-exit p0

    return-object v3

    .line 460
    :cond_3
    :goto_0
    :try_start_2
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    .line 461
    .local v1, "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 464
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "DIRTY"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 467
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 468
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    monitor-exit p0

    return-object v1

    .line 446
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v1    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .line 571
    const/16 v0, 0x7d0

    .line 572
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 573
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 572
    :goto_0
    return v1
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    .line 202
    if-lez p2, :cond_3

    .line 207
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v1, "journalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 214
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 219
    .end local v1    # "journalFile":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 220
    .local v1, "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    iget-object v2, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    :try_start_0
    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournal()V

    .line 223
    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-object v1

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->delete()V

    .line 237
    .end local v2    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 238
    new-instance v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v5, v2

    move-object v6, p0

    move v7, p1

    move v8, p2

    move-wide v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v1, v2

    .line 239
    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 240
    return-object v1

    .line 203
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v1    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 328
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 330
    .local v1, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 331
    nop

    .local v3, "t":I
    :goto_1
    move v2, v3

    .end local v3    # "t":I
    .local v2, "t":I
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 332
    iget-wide v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 331
    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 335
    .end local v2    # "t":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 336
    nop

    .restart local v3    # "t":I
    :goto_2
    move v2, v3

    .end local v3    # "t":I
    .restart local v2    # "t":I
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_1

    .line 337
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 338
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 336
    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    .line 340
    .end local v2    # "t":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 342
    .end local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_2
    goto :goto_0

    .line 343
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Lcom/bumptech/glide/disklrucache/StrictLineReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 246
    .local v0, "reader":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    :try_start_0
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "magic":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "appVersionString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "valueCountString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "blank":Ljava/lang/String;
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    .line 252
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 254
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    .line 255
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 260
    const/4 v6, 0x0

    .line 263
    .local v6, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    add-int/lit8 v6, v6, 0x1

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v7

    .line 266
    .local v7, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 269
    .end local v7    # "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v6, v7

    iput v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 272
    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    goto :goto_1

    .line 275
    :cond_0
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v10, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    .end local v1    # "magic":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "appVersionString":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "blank":Ljava/lang/String;
    .end local v6    # "lineCount":I
    :goto_1
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 280
    nop

    .line 281
    return-void

    .line 256
    .restart local v1    # "magic":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    .restart local v3    # "appVersionString":Ljava/lang/String;
    .restart local v4    # "valueCountString":Ljava/lang/String;
    .restart local v5    # "blank":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    .end local v1    # "magic":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "appVersionString":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "blank":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 285
    .local v1, "firstSpace":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 289
    add-int/lit8 v3, v1, 0x1

    .line 290
    .local v3, "keyBegin":I
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 292
    .local v0, "secondSpace":I
    if-ne v0, v2, :cond_0

    .line 293
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "key":Ljava/lang/String;
    const-string v5, "REMOVE"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void

    .line 299
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 302
    .restart local v4    # "key":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 303
    .local v5, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 304
    new-instance v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-direct {v7, p0, v4, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    move-object v5, v7

    .line 305
    iget-object v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_2
    if-eq v0, v2, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 309
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "parts":[Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    .line 311
    invoke-static {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 312
    invoke-static {v5, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$900(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 313
    .end local v2    # "parts":[Ljava/lang/String;
    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const-string v7, "DIRTY"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_4

    const-string v7, "DIRTY"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 314
    new-instance v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    invoke-direct {v2, p0, v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    invoke-static {v5, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$802(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    goto :goto_0

    .line 315
    :cond_4
    if-ne v0, v2, :cond_5

    const-string v2, "READ"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_5

    const-string v2, "READ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    .end local v0    # "secondSpace":I
    .end local v3    # "keyBegin":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected journal line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 354
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 368
    .local v2, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .end local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :goto_1
    goto :goto_0

    .line 375
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 376
    nop

    .line 378
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v1, v3, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 381
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 382
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 384
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v2, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    if-eqz p2, :cond_0

    .line 396
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    return-void

    .line 399
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    :goto_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 648
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 649
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 650
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    goto :goto_0

    .line 651
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 634
    monitor-exit p0

    return-void

    .line 636
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 637
    .local v1, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 638
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 640
    .end local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_1
    goto :goto_0

    .line 641
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 642
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->close()V

    .line 660
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 661
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 626
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 627
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 628
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 409
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 410
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 412
    monitor-exit p0

    return-object v1

    .line 415
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 416
    monitor-exit p0

    return-object v1

    .line 419
    :cond_1
    :try_start_2
    iget-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 421
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    .line 422
    monitor-exit p0

    return-object v1

    .line 419
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 426
    :cond_3
    :try_start_3
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 427
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 430
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 431
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 435
    :cond_4
    new-instance v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1300(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v9

    .line 408
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 482
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 583
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 584
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 585
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 589
    :cond_0
    nop

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 590
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 591
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 592
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 594
    :cond_2
    :goto_1
    iget-wide v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v1

    const/4 v5, 0x0

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 595
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 589
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v1    # "i":I
    :cond_3
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 599
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "REMOVE"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 601
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 602
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 604
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 607
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :cond_4
    monitor-exit p0

    return v2

    .line 586
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    .line 582
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 490
    :try_start_0
    iput-wide p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 489
    .end local p1    # "maxSize":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 500
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
