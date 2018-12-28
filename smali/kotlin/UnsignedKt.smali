.class public final Lkotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "UnsignedUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnsignedUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnsignedUtils.kt\nkotlin/UnsignedKt\n*L\n1#1,80:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0001\u001a\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\"\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0007\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000bH\u0001\u001a\"\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\"\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u000f\u001a\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0000\u001a\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "uintCompare",
        "",
        "v1",
        "v2",
        "uintDivide",
        "Lkotlin/UInt;",
        "uintDivide-J1ME1BU",
        "(II)I",
        "uintRemainder",
        "uintRemainder-J1ME1BU",
        "ulongCompare",
        "",
        "ulongDivide",
        "Lkotlin/ULong;",
        "ulongDivide-eb3DHEI",
        "(JJ)J",
        "ulongRemainder",
        "ulongRemainder-eb3DHEI",
        "ulongToString",
        "",
        "v",
        "base",
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
    name = "UnsignedKt"
.end annotation


# direct methods
.method public static final uintCompare(II)I
    .locals 2
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 10
    const/high16 v0, -0x80000000

    xor-int v1, p0, v0

    xor-int/2addr v0, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    return v0
.end method

.method public static final uintDivide-J1ME1BU(II)I
    .locals 6
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 15
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final uintRemainder-J1ME1BU(II)I
    .locals 6
    .param p0, "v1"    # I
    .param p1, "v2"    # I
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 17
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    rem-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final ulongCompare(JJ)I
    .locals 5
    .param p0, "v1"    # J
    .param p2, "v2"    # J
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    xor-long v2, p0, v0

    xor-long/2addr v0, p2

    cmp-long v4, v2, v0

    return v4
.end method

.method public static final ulongDivide-eb3DHEI(JJ)J
    .locals 13
    .param p0, "v1"    # J
    .param p2, "v2"    # J
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 24
    move-wide v0, p0

    .line 25
    .local v0, "dividend":J
    move-wide v2, p2

    .line 26
    .local v2, "divisor":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 27
    invoke-static/range {p0 .. p3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v6

    if-gez v6, :cond_0

    :goto_0
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x1

    goto :goto_0

    :goto_1
    return-wide v4

    .line 31
    :cond_1
    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    .line 32
    div-long v4, v0, v2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4

    .line 36
    :cond_2
    const/4 v4, 0x1

    ushr-long v5, v0, v4

    div-long/2addr v5, v2

    shl-long/2addr v5, v4

    .line 37
    .local v5, "quotient":J
    mul-long v7, v5, v2

    sub-long v7, v0, v7

    .line 38
    .local v7, "rem":J
    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v9

    if-ltz v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    int-to-long v9, v4

    add-long/2addr v9, v5

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    return-wide v9
.end method

.method public static final ulongRemainder-eb3DHEI(JJ)J
    .locals 15
    .param p0, "v1"    # J
    .param p2, "v2"    # J
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 44
    move-wide v0, p0

    .line 45
    .local v0, "dividend":J
    move-wide/from16 v2, p2

    .line 46
    .local v2, "divisor":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 47
    invoke-static/range {p0 .. p3}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 48
    nop

    .line 47
    move-wide v4, p0

    goto :goto_0

    .line 50
    :cond_0
    const/4 v4, 0x0

    sub-long v4, p0, p2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    .line 47
    :goto_0
    return-wide v4

    .line 55
    :cond_1
    cmp-long v7, v0, v4

    if-ltz v7, :cond_2

    .line 56
    rem-long v4, v0, v2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4

    .line 60
    :cond_2
    const/4 v7, 0x1

    ushr-long v8, v0, v7

    div-long/2addr v8, v2

    shl-long v7, v8, v7

    .line 61
    .local v7, "quotient":J
    mul-long v9, v7, v2

    sub-long v9, v0, v9

    .line 62
    .local v9, "rem":J
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v11, v12, v4, v5}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v4

    if-ltz v4, :cond_3

    move-wide v13, v2

    goto :goto_1

    :cond_3
    const-wide/16 v13, 0x0

    :goto_1
    const/4 v4, 0x0

    sub-long v4, v9, v13

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final ulongToString(J)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lkotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final ulongToString(JI)Ljava/lang/String;
    .locals 7
    .param p0, "v"    # J
    .param p2, "base"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    int-to-long v3, p2

    div-long/2addr v1, v3

    shl-long v0, v1, v0

    .line 72
    .local v0, "quotient":J
    int-to-long v2, p2

    mul-long v2, v2, v0

    sub-long v2, p0, v2

    .line 73
    .local v2, "rem":J
    int-to-long v4, p2

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 74
    int-to-long v4, p2

    sub-long/2addr v2, v4

    .line 75
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 77
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v0, v1, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
