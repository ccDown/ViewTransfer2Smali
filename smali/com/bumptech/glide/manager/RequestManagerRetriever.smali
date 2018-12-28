.class public Lcom/bumptech/glide/manager/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private static final FRAGMENT_INDEX_KEY:Ljava/lang/String; = "key"

.field static final FRAGMENT_TAG:Ljava/lang/String; = "com.bumptech.glide.manager"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final ID_REMOVE_FRAGMENT_MANAGER:I = 0x1

.field private static final ID_REMOVE_SUPPORT_FRAGMENT_MANAGER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RMRetriever"


# instance fields
.field private volatile applicationManager:Lcom/bumptech/glide/RequestManager;

.field private final factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private final handler:Landroid/os/Handler;

.field final pendingRequestManagerFragments:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final pendingSupportRequestManagerFragments:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tempBundle:Landroid/os/Bundle;

.field private final tempViewToFragment:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 486
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerRetriever$1;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 2
    .param p1, "factory"    # Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    .line 80
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private static assertNotDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    :goto_0
    return-void
.end method

.method private findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 311
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 312
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 313
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 314
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 316
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V
    .locals 3
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/ArrayMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    .local p2, "result":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/app/Fragment;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 272
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 273
    .local v1, "fragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    .line 277
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViewsPreO(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    .line 281
    :cond_2
    return-void
.end method

.method private findAllFragmentsWithViewsPreO(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V
    .locals 4
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/ArrayMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    .local p2, "result":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/app/Fragment;>;"
    const/4 v0, 0x0

    .line 290
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    const-string v2, "key"

    add-int/lit8 v3, v0, 0x1

    .local v3, "index":I
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    .end local v0    # "index":I
    const/4 v0, 0x0

    .line 293
    .local v0, "fragment":Landroid/app/Fragment;
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    const-string v2, "key"

    invoke-virtual {p1, v1, v2}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 296
    goto :goto_1

    .line 294
    :catch_0
    move-exception v1

    .line 297
    :goto_1
    if-nez v0, :cond_0

    .line 298
    nop

    .line 307
    .end local v0    # "fragment":Landroid/app/Fragment;
    return-void

    .line 300
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 303
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    .line 306
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    nop

    .line 288
    move v0, v3

    goto :goto_0
.end method

.method private static findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p0, "topLevelFragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v4/app/Fragment;>;"
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/support/v4/app/Fragment;>;"
    if-nez p0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 205
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    .line 210
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 211
    :cond_3
    return-void
.end method

.method private findFragment(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;
    .locals 4
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 242
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "result":Landroid/app/Fragment;
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, "activityRoot":Landroid/view/View;
    move-object v2, v0

    move-object v0, p1

    .line 248
    .local v0, "current":Landroid/view/View;
    .local v2, "result":Landroid/app/Fragment;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/Fragment;

    .line 250
    if-eqz v2, :cond_0

    .line 251
    goto :goto_1

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 259
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 260
    return-object v2
.end method

.method private findSupportFragment(Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 216
    nop

    .line 217
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    .line 216
    invoke-static {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "result":Landroid/support/v4/app/Fragment;
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, "activityRoot":Landroid/view/View;
    move-object v2, v0

    move-object v0, p1

    .line 221
    .local v0, "current":Landroid/view/View;
    .local v2, "result":Landroid/support/v4/app/Fragment;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 223
    if-eqz v2, :cond_0

    .line 224
    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 234
    return-object v2
.end method

.method private fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/RequestManager;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fm"    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parentHint"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "isParentVisible"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-direct {p0, p2, p3, p4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    .line 383
    .local v0, "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 384
    .local v1, "requestManager":Lcom/bumptech/glide/RequestManager;
    if-nez v1, :cond_0

    .line 386
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    .line 387
    .local v2, "glide":Lcom/bumptech/glide/Glide;
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 389
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getGlideLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v5

    .line 388
    invoke-interface {v3, v2, v4, v5, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 392
    .end local v2    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    return-object v1
.end method

.method private getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_1

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 97
    .local v0, "glide":Lcom/bumptech/glide/Glide;
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    new-instance v2, Lcom/bumptech/glide/manager/ApplicationLifecycle;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/ApplicationLifecycle;-><init>()V

    new-instance v3, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;

    invoke-direct {v3}, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 98
    invoke-interface {v1, v0, v2, v3, v4}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    .line 104
    .end local v0    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method private getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parentHint"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "isParentVisible"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 358
    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 359
    .local v0, "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    if-nez v0, :cond_1

    .line 360
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 361
    if-nez v0, :cond_1

    .line 362
    new-instance v1, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    move-object v0, v1

    .line 363
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->setParentFragmentHint(Landroid/app/Fragment;)V

    .line 364
    if-eqz p3, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getGlideLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 369
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 372
    :cond_1
    return-object v0
.end method

.method private getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .locals 3
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parentHint"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "isParentVisible"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 410
    const-string v0, "com.bumptech.glide.manager"

    .line 411
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 412
    .local v0, "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    if-nez v0, :cond_1

    .line 413
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 414
    if-nez v0, :cond_1

    .line 415
    new-instance v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    move-object v0, v1

    .line 416
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->setParentFragmentHint(Landroid/support/v4/app/Fragment;)V

    .line 417
    if-eqz p3, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getGlideLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 422
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 425
    :cond_1
    return-object v0
.end method

.method private static isActivityVisible(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 404
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/RequestManager;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parentHint"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "isParentVisible"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 434
    nop

    .line 435
    invoke-direct {p0, p2, p3, p4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    .line 436
    .local v0, "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 437
    .local v1, "requestManager":Lcom/bumptech/glide/RequestManager;
    if-nez v1, :cond_0

    .line 439
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    .line 440
    .local v2, "glide":Lcom/bumptech/glide/Glide;
    iget-object v3, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 442
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getGlideLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v5

    .line 441
    invoke-interface {v3, v2, v4, v5, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 445
    .end local v2    # "glide":Lcom/bumptech/glide/Glide;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 154
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 159
    .local v0, "fm":Landroid/app/FragmentManager;
    const/4 v1, 0x0

    .line 160
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->isActivityVisible(Landroid/app/Activity;)Z

    move-result v2

    .line 159
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method public get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 336
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 340
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1

    .line 337
    .end local v0    # "fm":Landroid/app/FragmentManager;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 112
    if-eqz p1, :cond_3

    .line 114
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 115
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 118
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 120
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 124
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 147
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method public get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 133
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 134
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    const/4 v1, 0x0

    .line 135
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->isActivityVisible(Landroid/app/Activity;)Z

    move-result v2

    .line 134
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method public get(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 167
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 176
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1

    .line 184
    :cond_1
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_3

    .line 185
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findSupportFragment(Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 186
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    :goto_0
    return-object v2

    .line 190
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findFragment(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v1

    .line 191
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_4

    .line 192
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    return-object v2

    .line 194
    :cond_4
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    return-object v2
.end method

.method getRequestManagerFragment(Landroid/app/Activity;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    nop

    .line 349
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->isActivityVisible(Landroid/app/Activity;)Z

    move-result v1

    .line 348
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 397
    nop

    .line 398
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->isActivityVisible(Landroid/app/Activity;)Z

    move-result v1

    .line 397
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 450
    const/4 v0, 0x1

    .line 451
    .local v0, "handled":Z
    const/4 v1, 0x0

    .line 452
    .local v1, "removed":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 453
    .local v2, "key":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 465
    const/4 v0, 0x0

    goto :goto_0

    .line 460
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/app/FragmentManager;

    .line 461
    .local v3, "supportFm":Landroid/support/v4/app/FragmentManager;
    move-object v2, v3

    .line 462
    iget-object v4, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 463
    goto :goto_0

    .line 455
    .end local v3    # "supportFm":Landroid/support/v4/app/FragmentManager;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager;

    .line 456
    .local v3, "fm":Landroid/app/FragmentManager;
    move-object v2, v3

    .line 457
    iget-object v4, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 458
    nop

    .line 468
    .end local v3    # "fm":Landroid/app/FragmentManager;
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const-string v3, "RMRetriever"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    const-string v3, "RMRetriever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
