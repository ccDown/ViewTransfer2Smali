.class Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;
.super Landroid/os/Handler;
.source "DiskLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orhanobut/logger/DiskLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteHandler"
.end annotation


# instance fields
.field private final folder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final maxFileSize:I


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/String;I)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "folder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "maxFileSize"    # I

    .line 42
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    invoke-static {p2}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    .line 45
    return-void
.end method

.method private getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p1, "folderName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 97
    .local v1, "newFileCount":I
    const/4 v2, 0x0

    .line 99
    .local v2, "existingFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "%s_%s.csv"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v3, "newFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    move-object v2, v3

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    new-instance v4, Ljava/io/File;

    const-string v6, "%s_%s.csv"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p2, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    .line 106
    :cond_1
    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->maxFileSize:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 108
    return-object v3

    .line 110
    :cond_2
    return-object v2

    .line 113
    :cond_3
    return-object v3
.end method

.method private writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileWriter"    # Ljava/io/FileWriter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "content"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x0

    .line 52
    .local v1, "fileWriter":Ljava/io/FileWriter;
    iget-object v2, p0, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->folder:Ljava/lang/String;

    const-string v3, "logs"

    invoke-direct {p0, v2, v3}, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 55
    .local v2, "logFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v1, v3

    .line 57
    invoke-direct {p0, v1, v0}, Lcom/orhanobut/logger/DiskLogStrategy$WriteHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 60
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 64
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 65
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 66
    :catch_1
    move-exception v4

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
