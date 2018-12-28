.class public final Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,82:1\n57#1,23:83\n57#1,23:106\n25#2,2:129\n*E\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n19#1,23:83\n31#1,23:106\n14#1,2:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u001a5\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0010\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\u0007\u00a2\u0006\u0004\u0008\t\u0010\u000c\u001a~\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0014\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u00112(\u0010\u0012\u001a$\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0013H\u0082\u0008\u00a2\u0006\u0002\u0010\u0014\"\u0018\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "EMPTY",
        "",
        "",
        "[Ljava/lang/Object;",
        "MAX_SIZE",
        "",
        "collectionToArray",
        "collection",
        "",
        "toArray",
        "(Ljava/util/Collection;)[Ljava/lang/Object;",
        "a",
        "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;",
        "toArrayImpl",
        "empty",
        "Lkotlin/Function0;",
        "alloc",
        "Lkotlin/Function1;",
        "trim",
        "Lkotlin/Function2;",
        "(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "CollectionToArray"
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final MAX_SIZE:I = 0x7ffffffd


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const/4 v0, 0x0

    move v1, v0

    .line 129
    .local v1, "$i$f$emptyArray":I
    nop

    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    .end local v1    # "$i$f$emptyArray":I
    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public static final toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "toArray"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    nop

    .line 20
    nop

    .line 19
    const/4 v0, 0x0

    move v1, v0

    .line 83
    .local v1, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 84
    .local v2, "size$iv":I
    if-nez v2, :cond_0

    .line 21
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .local v0, "$i$a$1$toArrayImpl":I
    :goto_0
    sget-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY:[Ljava/lang/Object;

    goto :goto_3

    .line 85
    .end local v0    # "$i$a$1$toArrayImpl":I
    .restart local v1    # "$i$f$toArrayImpl":I
    .restart local v2    # "size$iv":I
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    .local v3, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    move v4, v2

    .local v4, "size":I
    move v5, v0

    .line 22
    .local v5, "$i$a$2$toArrayImpl":I
    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    .end local v5    # "$i$a$2$toArrayImpl":I
    .local v4, "result$iv":[Ljava/lang/Object;
    move-object v5, v4

    const/4 v4, 0x0

    .line 90
    .local v4, "i$iv":I
    .local v5, "result$iv":[Ljava/lang/Object;
    :goto_1
    nop

    .line 91
    add-int/lit8 v6, v4, 0x1

    .local v6, "i$iv":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v4

    .line 92
    .end local v4    # "i$iv":I
    array-length v4, v5

    if-lt v6, v4, :cond_5

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 24
    move-object v0, v5

    goto :goto_3

    .line 97
    :cond_2
    mul-int/lit8 v4, v6, 0x3

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1

    .line 98
    .local v4, "newSize$iv":I
    if-gt v4, v6, :cond_4

    .line 99
    const v7, 0x7ffffffd

    if-ge v6, v7, :cond_3

    .line 100
    const v4, 0x7ffffffd

    goto :goto_2

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 102
    :cond_4
    :goto_2
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Arrays.copyOf(result, newSize)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_4

    .line 104
    .end local v4    # "newSize$iv":I
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v5

    .local v4, "result":[Ljava/lang/Object;
    move v7, v6

    .line 23
    .local v0, "$i$a$3$toArrayImpl":I
    .local v7, "size":I
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Arrays.copyOf(result, size)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, v8

    .end local v0    # "$i$a$3$toArrayImpl":I
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v3    # "iter$iv":Ljava/util/Iterator;
    .end local v4    # "result":[Ljava/lang/Object;
    .end local v5    # "result$iv":[Ljava/lang/Object;
    .end local v6    # "i$iv":I
    .end local v7    # "size":I
    :goto_3
    return-object v0

    .line 105
    .restart local v1    # "$i$f$toArrayImpl":I
    .restart local v2    # "size$iv":I
    .restart local v3    # "iter$iv":Ljava/util/Iterator;
    .restart local v5    # "result$iv":[Ljava/lang/Object;
    .restart local v6    # "i$iv":I
    :cond_6
    :goto_4
    nop

    .line 90
    nop

    .line 88
    move v4, v6

    goto :goto_1
.end method

.method public static final toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "a"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "toArray"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    if-eqz p1, :cond_b

    .line 31
    nop

    .line 32
    nop

    .line 31
    const/4 v0, 0x0

    move v1, v0

    .line 106
    .local v1, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 107
    .local v2, "size$iv":I
    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v4, v0

    .line 34
    .local v4, "$i$a$4$toArrayImpl":I
    array-length v5, p1

    if-lez v5, :cond_0

    aput-object v3, p1, v0

    .line 35
    :cond_0
    :goto_0
    goto :goto_1

    .line 108
    .end local v4    # "$i$a$4$toArrayImpl":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 109
    .local v4, "iter$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v0

    .line 34
    .local v5, "$i$a$4$toArrayImpl":I
    array-length v6, p1

    if-lez v6, :cond_0

    aput-object v3, p1, v0

    goto :goto_0

    .line 113
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v5    # "$i$a$4$toArrayImpl":I
    :goto_1
    move-object v3, p1

    goto/16 :goto_6

    .line 110
    .restart local v1    # "$i$f$toArrayImpl":I
    .restart local v2    # "size$iv":I
    .restart local v4    # "iter$iv":Ljava/util/Iterator;
    :cond_2
    move v5, v2

    .local v5, "size":I
    move v6, v0

    .line 38
    .local v6, "$i$a$5$toArrayImpl":I
    nop

    .line 39
    array-length v7, p1

    if-gt v5, v7, :cond_3

    move-object v5, p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    .line 111
    .end local v6    # "$i$a$5$toArrayImpl":I
    .local v5, "result$iv":[Ljava/lang/Object;
    :goto_2
    move-object v6, v5

    const/4 v5, 0x0

    .line 113
    .local v5, "i$iv":I
    .local v6, "result$iv":[Ljava/lang/Object;
    :goto_3
    nop

    .line 114
    add-int/lit8 v7, v5, 0x1

    .local v7, "i$iv":I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v5

    .line 115
    .end local v5    # "i$iv":I
    array-length v5, v6

    if-lt v7, v5, :cond_7

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 113
    move-object v3, v6

    goto :goto_6

    .line 120
    :cond_4
    mul-int/lit8 v5, v7, 0x3

    add-int/lit8 v5, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1

    .line 121
    .local v5, "newSize$iv":I
    if-gt v5, v7, :cond_6

    .line 122
    const v8, 0x7ffffffd

    if-ge v7, v8, :cond_5

    .line 123
    const v5, 0x7ffffffd

    goto :goto_4

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 125
    :cond_6
    :goto_4
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Arrays.copyOf(result, newSize)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v8

    goto :goto_7

    .line 127
    .end local v5    # "newSize$iv":I
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    move-object v5, v6

    .local v5, "result":[Ljava/lang/Object;
    move v8, v7

    .line 42
    .local v0, "$i$a$6$toArrayImpl":I
    .local v8, "size":I
    if-ne v5, p1, :cond_8

    .line 43
    aput-object v3, p1, v8

    .line 44
    nop

    .line 42
    move-object v3, p1

    goto :goto_5

    .line 46
    :cond_8
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v9, "Arrays.copyOf(result, size)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .end local v0    # "$i$a$6$toArrayImpl":I
    .end local v5    # "result":[Ljava/lang/Object;
    .end local v8    # "size":I
    :goto_5
    nop

    .line 46
    nop

    .line 113
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v6    # "result$iv":[Ljava/lang/Object;
    .end local v7    # "i$iv":I
    :goto_6
    return-object v3

    .line 128
    .restart local v1    # "$i$f$toArrayImpl":I
    .restart local v2    # "size$iv":I
    .restart local v4    # "iter$iv":Ljava/util/Iterator;
    .restart local v6    # "result$iv":[Ljava/lang/Object;
    .restart local v7    # "i$iv":I
    :cond_9
    :goto_7
    nop

    .line 113
    nop

    .line 111
    move v5, v7

    goto :goto_3

    .line 39
    .end local v7    # "i$iv":I
    .local v5, "size":I
    .local v6, "$i$a$5$toArrayImpl":I
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    .end local v1    # "$i$f$toArrayImpl":I
    .end local v2    # "size$iv":I
    .end local v4    # "iter$iv":Ljava/util/Iterator;
    .end local v5    # "size":I
    .end local v6    # "$i$a$5$toArrayImpl":I
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final toArrayImpl(Ljava/util/Collection;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)[Ljava/lang/Object;
    .locals 8
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "empty"    # Lkotlin/jvm/functions/Function0;
    .param p2, "alloc"    # Lkotlin/jvm/functions/Function1;
    .param p3, "trim"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-[",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$toArrayImpl":I
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 58
    .local v1, "size":I
    if-nez v1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    return-object v2

    .line 59
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    .local v2, "iter":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    return-object v3

    .line 61
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 62
    .local v3, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 64
    .local v4, "i":I
    :goto_0
    nop

    .line 65
    add-int/lit8 v5, v4, 0x1

    .local v5, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v4

    .line 66
    .end local v4    # "i":I
    array-length v4, v3

    if-lt v5, v4, :cond_5

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    .line 71
    :cond_2
    mul-int/lit8 v4, v5, 0x3

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1

    .line 72
    .local v4, "newSize":I
    if-gt v4, v5, :cond_4

    .line 73
    const v6, 0x7ffffffd

    if-ge v5, v6, :cond_3

    .line 74
    const v4, 0x7ffffffd

    goto :goto_1

    .line 73
    :cond_3
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6}, Ljava/lang/OutOfMemoryError;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 76
    :cond_4
    :goto_1
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Arrays.copyOf(result, newSize)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v6

    goto :goto_2

    .line 78
    .end local v4    # "newSize":I
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    return-object v4

    .line 79
    :cond_6
    :goto_2
    nop

    .line 64
    nop

    .line 62
    move v4, v5

    goto :goto_0
.end method
