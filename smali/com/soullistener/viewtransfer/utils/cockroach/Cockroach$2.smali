.class final Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;
.super Ljava/lang/Object;
.source "Cockroach.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->hookmH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mhHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;->val$mhHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x68

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 114
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;->val$mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$300()Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;->finishPauseActivity(Landroid/os/Message;)V

    .line 117
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$400(Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return v2

    .line 122
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;->val$mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$300()Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;->finishPauseActivity(Landroid/os/Message;)V

    .line 125
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$400(Ljava/lang/Throwable;)V

    .line 127
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return v2

    .line 98
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;->val$mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    goto :goto_2

    .line 99
    :catch_2
    move-exception v0

    .line 100
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$300()Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;->finishLaunchActivity(Landroid/os/Message;)V

    .line 101
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$400(Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_2
    return v2

    .line 138
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;->val$mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 141
    goto :goto_3

    .line 139
    :catch_3
    move-exception v0

    .line 140
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$400(Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_3
    return v2

    .line 106
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;->val$mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 110
    goto :goto_4

    .line 107
    :catch_4
    move-exception v0

    .line 108
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$300()Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;->finishResumeActivity(Landroid/os/Message;)V

    .line 109
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$400(Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_4
    return v2

    .line 130
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach$2;->val$mhHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 134
    goto :goto_5

    .line 131
    :catch_5
    move-exception v0

    .line 132
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$300()Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/soullistener/viewtransfer/utils/cockroach/compat/IActivityKiller;->finishStopActivity(Landroid/os/Message;)V

    .line 133
    invoke-static {v0}, Lcom/soullistener/viewtransfer/utils/cockroach/Cockroach;->access$400(Ljava/lang/Throwable;)V

    .line 135
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
