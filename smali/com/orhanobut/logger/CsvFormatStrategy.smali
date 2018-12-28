.class public Lcom/orhanobut/logger/CsvFormatStrategy;
.super Ljava/lang/Object;
.source "CsvFormatStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orhanobut/logger/CsvFormatStrategy$Builder;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String;

.field private static final NEW_LINE_REPLACEMENT:Ljava/lang/String; = " <br> "

.field private static final SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private final date:Ljava/util/Date;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final dateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final logStrategy:Lcom/orhanobut/logger/LogStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final tag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/orhanobut/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/orhanobut/logger/CsvFormatStrategy$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/orhanobut/logger/CsvFormatStrategy$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p1, Lcom/orhanobut/logger/CsvFormatStrategy$Builder;->date:Ljava/util/Date;

    iput-object v0, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    .line 36
    iget-object v0, p1, Lcom/orhanobut/logger/CsvFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 37
    iget-object v0, p1, Lcom/orhanobut/logger/CsvFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    iput-object v0, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    .line 38
    iget-object v0, p1, Lcom/orhanobut/logger/CsvFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/orhanobut/logger/CsvFormatStrategy$Builder;Lcom/orhanobut/logger/CsvFormatStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/orhanobut/logger/CsvFormatStrategy$Builder;
    .param p2, "x1"    # Lcom/orhanobut/logger/CsvFormatStrategy$1;

    .line 21
    invoke-direct {p0, p1}, Lcom/orhanobut/logger/CsvFormatStrategy;-><init>(Lcom/orhanobut/logger/CsvFormatStrategy$Builder;)V

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

    .line 84
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/orhanobut/logger/Utils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static newBuilder()Lcom/orhanobut/logger/CsvFormatStrategy$Builder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 42
    new-instance v0, Lcom/orhanobut/logger/CsvFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/orhanobut/logger/CsvFormatStrategy$Builder;-><init>(Lcom/orhanobut/logger/CsvFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "onceOnlyTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0, p2}, Lcom/orhanobut/logger/CsvFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->logLevel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v2, Lcom/orhanobut/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    sget-object v2, Lcom/orhanobut/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    const-string v3, " <br> "

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 74
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-object v2, Lcom/orhanobut/logger/CsvFormatStrategy;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v2, p0, Lcom/orhanobut/logger/CsvFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v0, v3}, Lcom/orhanobut/logger/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
