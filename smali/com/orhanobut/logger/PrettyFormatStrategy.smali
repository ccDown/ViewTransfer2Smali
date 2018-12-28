.class public Lcom/orhanobut/logger/PrettyFormatStrategy;
.super Ljava/lang/Object;
.source "PrettyFormatStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    }
.end annotation


# static fields
.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final BOTTOM_LEFT_CORNER:C = '\u2514'

.field private static final CHUNK_SIZE:I = 0xfa0

.field private static final DOUBLE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final HORIZONTAL_LINE:C = '\u2502'

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final MIDDLE_CORNER:C = '\u251c'

.field private static final MIN_STACK_OFFSET:I = 0x5

.field private static final SINGLE_DIVIDER:Ljava/lang/String; = "\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final TOP_BORDER:Ljava/lang/String; = "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_LEFT_CORNER:C = '\u250c'


# instance fields
.field private final logStrategy:Lcom/orhanobut/logger/LogStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final methodCount:I

.field private final methodOffset:I

.field private final showThreadInfo:Z

.field private final tag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodCount:I

    iput v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    .line 63
    iget v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodOffset:I

    iput v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodOffset:I

    .line 64
    iget-boolean v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->showThreadInfo:Z

    iput-boolean v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->showThreadInfo:Z

    .line 65
    iget-object v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    iput-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    .line 66
    iget-object v0, p1, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;Lcom/orhanobut/logger/PrettyFormatStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .param p2, "x1"    # Lcom/orhanobut/logger/PrettyFormatStrategy$1;

    .line 26
    invoke-direct {p0, p1}, Lcom/orhanobut/logger/PrettyFormatStrategy;-><init>(Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;)V

    return-void
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/orhanobut/logger/Utils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 170
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "lastIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStackOffset([Ljava/lang/StackTraceElement;)I
    .locals 5
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 183
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 186
    aget-object v1, p1, v0

    .line 187
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "name":Ljava/lang/String;
    const-class v4, Lcom/orhanobut/logger/LoggerPrinter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/orhanobut/logger/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    add-int/2addr v0, v2

    return v0

    .line 185
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method private logBottomBorder(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    const-string v0, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private logChunk(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "chunk"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcom/orhanobut/logger/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private logContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "chunk"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 159
    .local v3, "line":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2502 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method private logDivider(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 151
    const-string v0, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private logHeaderContent(ILjava/lang/String;I)V
    .locals 8
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "methodCount"    # I

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 110
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    iget-boolean v1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->showThreadInfo:Z

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2502 Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 114
    :cond_0
    const-string v1, ""

    .line 116
    .local v1, "level":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->getStackOffset([Ljava/lang/StackTraceElement;)I

    move-result v2

    iget v3, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodOffset:I

    add-int/2addr v2, v3

    .line 119
    .local v2, "stackOffset":I
    add-int v3, p3, v2

    array-length v4, v0

    if-le v3, v4, :cond_1

    .line 120
    array-length v3, v0

    sub-int/2addr v3, v2

    add-int/lit8 p3, v3, -0x1

    .line 123
    :cond_1
    move-object v3, v1

    move v1, p3

    .local v1, "i":I
    .local v3, "level":Ljava/lang/String;
    :goto_0
    if-lez v1, :cond_3

    .line 124
    add-int v4, v1, v2

    .line 125
    .local v4, "stackIndex":I
    array-length v5, v0

    if-lt v4, v5, :cond_2

    .line 126
    goto :goto_1

    .line 128
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/16 v6, 0x2502

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v4

    .line 132
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/orhanobut/logger/PrettyFormatStrategy;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v4

    .line 134
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v4

    .line 137
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v4

    .line 139
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    .line 140
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v4    # "stackIndex":I
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private logTopBorder(ILjava/lang/String;)V
    .locals 1
    .param p1, "logType"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    const-string v0, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static newBuilder()Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 70
    new-instance v0, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;-><init>(Lcom/orhanobut/logger/PrettyFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "priority"    # I
    .param p2, "onceOnlyTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p2}, Lcom/orhanobut/logger/PrettyFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "tag":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logTopBorder(ILjava/lang/String;)V

    .line 79
    iget v1, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    invoke-direct {p0, p1, v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logHeaderContent(ILjava/lang/String;I)V

    .line 82
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 83
    .local v1, "bytes":[B
    array-length v2, v1

    .line 84
    .local v2, "length":I
    const/16 v3, 0xfa0

    if-gt v2, v3, :cond_1

    .line 85
    iget v3, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    if-lez v3, :cond_0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 88
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logBottomBorder(ILjava/lang/String;)V

    .line 90
    return-void

    .line 92
    :cond_1
    iget v4, p0, Lcom/orhanobut/logger/PrettyFormatStrategy;->methodCount:I

    if-lez v4, :cond_2

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logDivider(ILjava/lang/String;)V

    .line 95
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 96
    sub-int v5, v2, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 98
    .local v5, "count":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, v0, v6}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v5    # "count":I
    add-int/lit16 v4, v4, 0xfa0

    goto :goto_0

    .line 100
    .end local v4    # "i":I
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/orhanobut/logger/PrettyFormatStrategy;->logBottomBorder(ILjava/lang/String;)V

    .line 101
    return-void
.end method
