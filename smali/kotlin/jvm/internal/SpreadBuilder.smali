.class public Lkotlin/jvm/internal/SpreadBuilder;
.super Ljava/lang/Object;
.source "SpreadBuilder.java"


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addSpread(Ljava/lang/Object;)V
    .locals 6
    .param p1, "container"    # Ljava/lang/Object;

    .line 22
    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 25
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 26
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 27
    iget-object v1, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 28
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 29
    .local v4, "element":Ljava/lang/Object;
    iget-object v5, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .end local v4    # "element":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    goto :goto_3

    .line 33
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 36
    :cond_3
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_4

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "element":Ljava/lang/Object;
    iget-object v2, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "element":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_6

    .line 42
    move-object v0, p1

    check-cast v0, Ljava/util/Iterator;

    .local v0, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    iget-object v1, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 49
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    return-void

    .line 47
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to spread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 52
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
