.class public Lcom/orhanobut/logger/AndroidLogAdapter;
.super Ljava/lang/Object;
.source "AndroidLogAdapter.java"

# interfaces
.implements Lcom/orhanobut/logger/LogAdapter;


# instance fields
.field private final formatStrategy:Lcom/orhanobut/logger/FormatStrategy;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/orhanobut/logger/PrettyFormatStrategy;->newBuilder()Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->build()Lcom/orhanobut/logger/PrettyFormatStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/orhanobut/logger/AndroidLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/orhanobut/logger/FormatStrategy;)V
    .locals 1
    .param p1, "formatStrategy"    # Lcom/orhanobut/logger/FormatStrategy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/orhanobut/logger/FormatStrategy;

    iput-object v0, p0, Lcom/orhanobut/logger/AndroidLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    .line 31
    return-void
.end method


# virtual methods
.method public isLoggable(ILjava/lang/String;)Z
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Lcom/orhanobut/logger/AndroidLogAdapter;->formatStrategy:Lcom/orhanobut/logger/FormatStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcom/orhanobut/logger/FormatStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
