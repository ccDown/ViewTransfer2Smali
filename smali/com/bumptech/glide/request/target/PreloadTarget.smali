.class public final Lcom/bumptech/glide/request/target/PreloadTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final MESSAGE_CLEAR:I = 0x1


# instance fields
.field private final requestManager:Lcom/bumptech/glide/RequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/target/PreloadTarget$1;

    invoke-direct {v2}, Lcom/bumptech/glide/request/target/PreloadTarget$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/request/target/PreloadTarget;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/RequestManager;II)V
    .locals 0
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 46
    .local p0, "this":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/request/target/PreloadTarget;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 48
    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/request/target/PreloadTarget;
    .locals 1
    .param p0, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/RequestManager;",
            "II)",
            "Lcom/bumptech/glide/request/target/PreloadTarget<",
            "TZ;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/bumptech/glide/request/target/PreloadTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;-><init>(Lcom/bumptech/glide/RequestManager;II)V

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 57
    .local p0, "this":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/PreloadTarget;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 58
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/bumptech/glide/request/target/PreloadTarget;, "Lcom/bumptech/glide/request/target/PreloadTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-TZ;>;"
    sget-object v0, Lcom/bumptech/glide/request/target/PreloadTarget;->HANDLER:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    return-void
.end method
