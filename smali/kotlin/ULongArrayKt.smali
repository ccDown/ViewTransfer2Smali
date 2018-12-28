.class public final Lkotlin/ULongArrayKt;
.super Ljava/lang/Object;
.source "ULongArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nULongArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ULongArray.kt\nkotlin/ULongArrayKt\n+ 2 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n*L\n1#1,58:1\n66#2,5:59\n*E\n*S KotlinDebug\n*F\n+ 1 ULongArray.kt\nkotlin/ULongArrayKt\n*L\n51#1,5:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u001f\u0010\u0008\u001a\u00020\u00012\n\u0010\t\u001a\u00020\u0001\"\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "ULongArray",
        "Lkotlin/ULongArray;",
        "size",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lkotlin/ULong;",
        "(ILkotlin/jvm/functions/Function1;)[J",
        "ulongArrayOf",
        "elements",
        "ulongArrayOf-QwZRm1k",
        "([J)[J",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private static final ULongArray(ILkotlin/jvm/functions/Function1;)[J
    .locals 8
    .param p0, "size"    # I
    .param p1, "init"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/ULong;",
            ">;)[J"
        }
    .end annotation

    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$ULongArray":I
    const/4 v1, 0x0

    move v2, v1

    .line 59
    .local v2, "$i$f$LongArray":I
    new-array v3, p0, [J

    .line 60
    .local v3, "result$iv":[J
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 61
    .local v1, "i$iv":I
    move v6, v1

    .line 51
    .local v5, "$i$a$1$<init>":I
    .local v6, "index":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/ULong;

    invoke-virtual {v7}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v6

    .end local v5    # "$i$a$1$<init>":I
    .end local v6    # "index":I
    aput-wide v6, v3, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i$iv":I
    :cond_0
    nop

    .line 51
    .end local v2    # "$i$f$LongArray":I
    .end local v3    # "result$iv":[J
    invoke-static {v3}, Lkotlin/ULongArray;->constructor-impl([J)[J

    move-result-object v1

    return-object v1
.end method

.method private static final varargs ulongArrayOf-QwZRm1k([J)[J
    .locals 1
    .param p0, "elements"    # [J
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$ulongArrayOf-QwZRm1k":I
    return-object p0
.end method
