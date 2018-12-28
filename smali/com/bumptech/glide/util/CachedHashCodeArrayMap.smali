.class public final Lcom/bumptech/glide/util/CachedHashCodeArrayMap;
.super Landroid/support/v4/util/ArrayMap;
.source "CachedHashCodeArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/ArrayMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    .local p0, "this":Lcom/bumptech/glide/util/CachedHashCodeArrayMap;, "Lcom/bumptech/glide/util/CachedHashCodeArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 21
    .local p0, "this":Lcom/bumptech/glide/util/CachedHashCodeArrayMap;, "Lcom/bumptech/glide/util/CachedHashCodeArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    .line 22
    invoke-super {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 23
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 51
    .local p0, "this":Lcom/bumptech/glide/util/CachedHashCodeArrayMap;, "Lcom/bumptech/glide/util/CachedHashCodeArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0}, Landroid/support/v4/util/ArrayMap;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    .line 54
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/bumptech/glide/util/CachedHashCodeArrayMap;, "Lcom/bumptech/glide/util/CachedHashCodeArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    .line 34
    invoke-super {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/bumptech/glide/util/CachedHashCodeArrayMap;, "Lcom/bumptech/glide/util/CachedHashCodeArrayMap<TK;TV;>;"
    .local p1, "simpleArrayMap":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<+TK;+TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/util/ArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 41
    return-void
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/bumptech/glide/util/CachedHashCodeArrayMap;, "Lcom/bumptech/glide/util/CachedHashCodeArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/bumptech/glide/util/CachedHashCodeArrayMap;, "Lcom/bumptech/glide/util/CachedHashCodeArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->hashCode:I

    .line 28
    invoke-super {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
