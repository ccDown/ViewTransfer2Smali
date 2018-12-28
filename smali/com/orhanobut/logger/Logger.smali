.class public final Lcom/orhanobut/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static printer:Lcom/orhanobut/logger/Printer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/orhanobut/logger/LoggerPrinter;

    invoke-direct {v0}, Lcom/orhanobut/logger/LoggerPrinter;-><init>()V

    sput-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static addLogAdapter(Lcom/orhanobut/logger/LogAdapter;)V
    .locals 2
    .param p0, "adapter"    # Lcom/orhanobut/logger/LogAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-static {p0}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/orhanobut/logger/LogAdapter;

    invoke-interface {v0, v1}, Lcom/orhanobut/logger/Printer;->addAdapter(Lcom/orhanobut/logger/LogAdapter;)V

    .line 34
    return-void
.end method

.method public static clearLogAdapters()V
    .locals 1

    .line 37
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0}, Lcom/orhanobut/logger/Printer;->clearLogAdapters()V

    .line 38
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1, p2}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->json(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/orhanobut/logger/Printer;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static printer(Lcom/orhanobut/logger/Printer;)V
    .locals 1
    .param p0, "printer"    # Lcom/orhanobut/logger/Printer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-static {p0}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/orhanobut/logger/Printer;

    sput-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    .line 30
    return-void
.end method

.method public static t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0, p1}, Lcom/orhanobut/logger/Printer;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .locals 1
    .param p0, "xml"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    sget-object v0, Lcom/orhanobut/logger/Logger;->printer:Lcom/orhanobut/logger/Printer;

    invoke-interface {v0, p0}, Lcom/orhanobut/logger/Printer;->xml(Ljava/lang/String;)V

    .line 104
    return-void
.end method
