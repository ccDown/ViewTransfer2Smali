.class public Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;
.super Landroid/app/Application;
.source "ViewTransferApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private cockroachInstall()V
    .locals 1

    .line 51
    new-instance v0, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;

    invoke-direct {v0, p0}, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication$1;-><init>(Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;)V

    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->install(Lcom/soullistener/viewtransfer/utils/cockroach/ExceptionHandler;)V

    .line 97
    return-void
.end method

.method private initLogger()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/orhanobut/logger/PrettyFormatStrategy;->newBuilder()Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->showThreadInfo(Z)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    .line 42
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodCount(I)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    .line 43
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->methodOffset(I)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    const-string v1, "ViewTransfer"

    .line 44
    invoke-virtual {v0, v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->build()Lcom/orhanobut/logger/PrettyFormatStrategy;

    move-result-object v0

    .line 46
    .local v0, "formatStrategy":Lcom/orhanobut/logger/FormatStrategy;
    new-instance v1, Lcom/orhanobut/logger/AndroidLogAdapter;

    invoke-direct {v1, v0}, Lcom/orhanobut/logger/AndroidLogAdapter;-><init>(Lcom/orhanobut/logger/FormatStrategy;)V

    invoke-static {v1}, Lcom/orhanobut/logger/Logger;->addLogAdapter(Lcom/orhanobut/logger/LogAdapter;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    invoke-static {p0}, Lcom/soullistener/viewtransfer/utils/Utils;->init(Landroid/app/Application;)V

    .line 30
    invoke-direct {p0}, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;->initLogger()V

    .line 36
    invoke-direct {p0}, Lcom/soullistener/viewtransfer/utils/ViewTransferApplication;->cockroachInstall()V

    .line 37
    return-void
.end method
