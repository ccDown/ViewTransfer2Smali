.class public Lcom/orhanobut/logger/LogcatLogStrategy;
.super Ljava/lang/Object;
.source "LogcatLogStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/LogStrategy;


# static fields
.field static final DEFAULT_TAG:Ljava/lang/String; = "NO_TAG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-static {p3}, Lcom/orhanobut/logger/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    if-nez p2, :cond_0

    .line 22
    const-string p2, "NO_TAG"

    .line 25
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
