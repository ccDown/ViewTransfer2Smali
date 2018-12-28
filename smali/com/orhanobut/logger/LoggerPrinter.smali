.class Lcom/orhanobut/logger/LoggerPrinter;
.super Ljava/lang/Object;
.source "LoggerPrinter.java"

# interfaces
.implements Lcom/orhanobut/logger/Printer;


# static fields
.field private static final JSON_INDENT:I = 0x2


# instance fields
.field private final localTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/orhanobut/logger/LogAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    return-void
.end method

.method private varargs createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 183
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private getTag()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 177
    return-object v0

    .line 179
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private varargs declared-synchronized log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Lcom/orhanobut/logger/LoggerPrinter;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "tag":Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/orhanobut/logger/LoggerPrinter;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 162
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local p1    # "priority":I
    .end local p2    # "throwable":Ljava/lang/Throwable;
    .end local p3    # "msg":Ljava/lang/String;
    .end local p4    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addAdapter(Lcom/orhanobut/logger/LogAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/orhanobut/logger/LogAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public clearLogAdapters()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public json(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Empty/Null json content"

    invoke-virtual {p0, v0}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 87
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 91
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 95
    return-void

    .line 97
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    .restart local v2    # "message":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 101
    return-void

    .line 103
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    const-string v1, "Invalid Json"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "Invalid Json"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public declared-synchronized log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 131
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 132
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/orhanobut/logger/Utils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    goto :goto_0

    .line 130
    .end local p1    # "priority":I
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 134
    .restart local p1    # "priority":I
    .restart local p2    # "tag":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    .restart local p4    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    .line 135
    invoke-static {p4}, Lcom/orhanobut/logger/Utils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    .line 137
    :cond_1
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "Empty/NULL log message"

    move-object p3, v0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/orhanobut/logger/LogAdapter;

    .line 142
    .local v1, "adapter":Lcom/orhanobut/logger/LogAdapter;
    invoke-interface {v1, p1, p2}, Lcom/orhanobut/logger/LogAdapter;->isLoggable(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    invoke-interface {v1, p1, p2, p3}, Lcom/orhanobut/logger/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v1    # "adapter":Lcom/orhanobut/logger/LogAdapter;
    :cond_3
    goto :goto_1

    .line 146
    :cond_4
    monitor-exit p0

    return-void

    .line 130
    .end local p1    # "priority":I
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "throwable":Ljava/lang/Throwable;
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-object p0
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public xml(Ljava/lang/String;)V
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "Empty/Null xml content"

    invoke-virtual {p0, v0}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 115
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v0, "xmlInput":Ljavax/xml/transform/Source;
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 117
    .local v1, "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 118
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    const-string v3, "indent"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 121
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ">"

    const-string v5, ">\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "xmlInput":Ljavax/xml/transform/Source;
    .end local v1    # "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    .end local v2    # "transformer":Ljavax/xml/transform/Transformer;
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    const-string v1, "Invalid xml"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    :goto_0
    return-void
.end method
