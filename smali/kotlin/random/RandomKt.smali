.class public final Lkotlin/random/RandomKt;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/RandomKt\n*L\n1#1,352:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0004H\u0007\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u000cH\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\r\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u001a\u0014\u0010\u0010\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\u0012\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Random",
        "Lkotlin/random/Random;",
        "seed",
        "",
        "",
        "boundsErrorMessage",
        "",
        "from",
        "",
        "until",
        "checkRangeBounds",
        "",
        "",
        "nextInt",
        "range",
        "Lkotlin/ranges/IntRange;",
        "nextLong",
        "Lkotlin/ranges/LongRange;",
        "takeUpperBits",
        "bitCount",
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
.method public static final Random(I)Lkotlin/random/Random;
    .locals 2
    .param p0, "seed"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 289
    new-instance v0, Lkotlin/random/XorWowRandom;

    shr-int/lit8 v1, p0, 0x1f

    invoke-direct {v0, p0, v1}, Lkotlin/random/XorWowRandom;-><init>(II)V

    check-cast v0, Lkotlin/random/Random;

    return-object v0
.end method

.method public static final Random(J)Lkotlin/random/Random;
    .locals 4
    .param p0, "seed"    # J
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 302
    new-instance v0, Lkotlin/random/XorWowRandom;

    long-to-int v1, p0

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lkotlin/random/XorWowRandom;-><init>(II)V

    check-cast v0, Lkotlin/random/Random;

    return-object v0
.end method

.method public static final boundsErrorMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "from"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "until"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "until"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Random range is empty: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final checkRangeBounds(DD)V
    .locals 3
    .param p0, "from"    # D
    .param p2, "until"    # D

    .line 349
    const/4 v0, 0x0

    cmpl-double v1, p2, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .local v0, "$i$a$3$require":I
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/random/RandomKt;->boundsErrorMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$3$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final checkRangeBounds(II)V
    .locals 3
    .param p0, "from"    # I
    .param p1, "until"    # I

    .line 347
    const/4 v0, 0x0

    if-le p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .local v0, "$i$a$1$require":I
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/random/RandomKt;->boundsErrorMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final checkRangeBounds(JJ)V
    .locals 3
    .param p0, "from"    # J
    .param p2, "until"    # J

    .line 348
    const/4 v0, 0x0

    cmp-long v1, p2, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .local v0, "$i$a$2$require":I
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/random/RandomKt;->boundsErrorMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$2$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final nextInt(Lkotlin/random/Random;Lkotlin/ranges/IntRange;)I
    .locals 3
    .param p0, "$receiver"    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "range"    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    nop

    .line 316
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v0

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lkotlin/random/Random;->nextInt(II)I

    move-result v0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkotlin/random/Random;->nextInt(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    .line 315
    :goto_0
    nop

    .line 320
    return v0

    .line 316
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get random in empty range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final nextLong(Lkotlin/random/Random;Lkotlin/ranges/LongRange;)J
    .locals 7
    .param p0, "$receiver"    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "range"    # Lkotlin/ranges/LongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    nop

    .line 332
    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getEndInclusive()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/random/Random;->nextLong(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getEndInclusive()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/random/Random;->nextLong(JJ)J

    move-result-wide v0

    add-long/2addr v0, v4

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v0

    .line 331
    :goto_0
    nop

    .line 336
    return-wide v0

    .line 332
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get random in empty range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final takeUpperBits(II)I
    .locals 2
    .param p0, "$receiver"    # I
    .param p1, "bitCount"    # I

    .line 345
    rsub-int/lit8 v0, p1, 0x20

    ushr-int v0, p0, v0

    neg-int v1, p1

    shr-int/lit8 v1, v1, 0x1f

    and-int/2addr v0, v1

    return v0
.end method
