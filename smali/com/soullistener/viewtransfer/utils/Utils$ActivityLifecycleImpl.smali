.class Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soullistener/viewtransfer/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityLifecycleImpl"
.end annotation


# instance fields
.field final mActivityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigCount:I

.field private mForegroundCount:I

.field final mStatusListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/HashMap;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    .line 144
    iput v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mConfigCount:I

    return-void
.end method

.method private postStatus(Z)V
    .locals 2
    .param p1, "isForeground"    # Z

    .line 201
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;

    .line 205
    .local v1, "onAppStatusChangedListener":Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;
    if-nez v1, :cond_1

    .line 206
    return-void

    .line 208
    :cond_1
    if-eqz p1, :cond_2

    .line 209
    invoke-interface {v1}, Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;->onForeground()V

    goto :goto_1

    .line 211
    :cond_2
    invoke-interface {v1}, Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;->onBackground()V

    .line 213
    .end local v1    # "onAppStatusChangedListener":Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;
    :goto_1
    goto :goto_0

    .line 214
    :cond_3
    return-void
.end method

.method private setTopActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 217
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 225
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addListener(Ljava/lang/Object;Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/soullistener/viewtransfer/utils/Utils$OnAppStatusChangedListener;

    .line 147
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method getTopActivity()Landroid/app/Activity;
    .locals 11

    .line 228
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 230
    .local v0, "topActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 231
    return-object v0

    .line 237
    .end local v0    # "topActivity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 238
    .local v1, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    .local v2, "activityThread":Ljava/lang/Object;
    const-string v3, "mActivityList"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 240
    .local v3, "activitiesField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 242
    .local v5, "activities":Ljava/util/Map;
    if-nez v5, :cond_1

    .line 243
    return-object v0

    .line 245
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 246
    .local v7, "activityRecord":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 247
    .local v8, "activityRecordClass":Ljava/lang/Class;
    const-string v9, "paused"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 248
    .local v9, "pausedField":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 250
    const-string v6, "activity"

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 251
    .local v6, "activityField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 253
    .local v4, "activity":Landroid/app/Activity;
    invoke-direct {p0, v4}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-object v4

    .line 256
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v6    # "activityField":Ljava/lang/reflect/Field;
    .end local v7    # "activityRecord":Ljava/lang/Object;
    .end local v8    # "activityRecordClass":Ljava/lang/Class;
    .end local v9    # "pausedField":Ljava/lang/reflect/Field;
    :cond_2
    goto :goto_0

    .line 265
    .end local v1    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "activityThread":Ljava/lang/Object;
    .end local v3    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v5    # "activities":Ljava/util/Map;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 263
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 261
    :catch_2
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 259
    :catch_3
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 257
    :catch_4
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 267
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    :goto_1
    nop

    .line 268
    :goto_2
    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 156
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 157
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 197
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 178
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 174
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 175
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 193
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 161
    invoke-direct {p0, p1}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 162
    iget v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 163
    invoke-direct {p0, v1}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->postStatus(Z)V

    .line 165
    :cond_0
    iget v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mConfigCount:I

    if-gez v0, :cond_1

    .line 166
    iget v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mConfigCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mConfigCount:I

    goto :goto_0

    .line 168
    :cond_1
    iget v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    .line 170
    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 182
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mConfigCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mConfigCount:I

    goto :goto_0

    .line 185
    :cond_0
    iget v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    .line 186
    iget v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mForegroundCount:I

    if-gtz v0, :cond_1

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->postStatus(Z)V

    .line 190
    :cond_1
    :goto_0
    return-void
.end method

.method removeListener(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/soullistener/viewtransfer/utils/Utils$ActivityLifecycleImpl;->mStatusListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method
