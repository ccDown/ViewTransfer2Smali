.class Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "StringNumberConversions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "numberFormatError",
        "",
        "input",
        "",
        "toByteOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Byte;",
        "radix",
        "",
        "(Ljava/lang/String;I)Ljava/lang/Byte;",
        "toIntOrNull",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "(Ljava/lang/String;I)Ljava/lang/Integer;",
        "toLongOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "(Ljava/lang/String;I)Ljava/lang/Long;",
        "toShortOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Short;",
        "(Ljava/lang/String;I)Ljava/lang/Short;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xd
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;-><init>()V

    return-void
.end method

.method public static final numberFormatError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number format: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static final toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;
    .locals 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    .local v0, "int":I
    const/16 v2, -0x80

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7f

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    int-to-byte v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 32
    :cond_1
    :goto_0
    return-object v1

    .line 31
    .end local v0    # "int":I
    :cond_2
    return-object v1
.end method

.method public static final toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 12
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 74
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "limit":I
    move v4, v2

    .local v4, "isNegative":Z
    move v5, v2

    .line 76
    .local v5, "start":I
    nop

    .line 77
    nop

    .line 78
    nop

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 81
    .local v2, "firstChar":C
    const/16 v6, 0x30

    if-ge v2, v6, :cond_4

    .line 82
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    return-object v1

    .line 84
    :cond_1
    const/4 v5, 0x1

    .line 86
    const/16 v6, 0x2d

    if-ne v2, v6, :cond_2

    .line 87
    const/4 v4, 0x1

    .line 88
    const/high16 v3, -0x80000000

    goto :goto_0

    .line 89
    :cond_2
    const/16 v6, 0x2b

    if-ne v2, v6, :cond_3

    .line 90
    const/4 v4, 0x0

    .line 91
    const v3, -0x7fffffff

    goto :goto_0

    .line 93
    :cond_3
    return-object v1

    .line 95
    :cond_4
    const/4 v5, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    const v3, -0x7fffffff

    .line 98
    :goto_0
    nop

    .line 101
    div-int v6, v3, p1

    .line 102
    .local v6, "limitBeforeMul":I
    const/4 v7, 0x0

    .line 103
    .local v7, "result":I
    add-int/lit8 v8, v0, -0x1

    if-gt v5, v8, :cond_9

    move v9, v7

    move v7, v5

    .line 104
    .local v7, "i":I
    .local v9, "result":I
    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v10

    .line 106
    .local v10, "digit":I
    if-gez v10, :cond_5

    return-object v1

    .line 107
    :cond_5
    if-ge v9, v6, :cond_6

    return-object v1

    .line 109
    :cond_6
    mul-int v9, v9, p1

    .line 111
    add-int v11, v3, v10

    if-ge v9, v11, :cond_7

    return-object v1

    .line 113
    :cond_7
    sub-int/2addr v9, v10

    .line 103
    .end local v10    # "digit":I
    if-eq v7, v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 116
    .end local v7    # "i":I
    :cond_8
    move v7, v9

    .end local v9    # "result":I
    .local v7, "result":I
    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_a
    neg-int v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static final toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 19
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "receiver$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 136
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    .local v2, "length":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-wide/16 v4, 0x0

    .local v4, "limit":J
    const/4 v6, 0x0

    move v7, v6

    .local v7, "isNegative":Z
    move v8, v6

    .line 139
    .local v8, "start":I
    nop

    .line 140
    nop

    .line 141
    nop

    .line 143
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 144
    .local v6, "firstChar":C
    const/16 v9, 0x30

    if-ge v6, v9, :cond_4

    .line 145
    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    return-object v3

    .line 147
    :cond_1
    const/4 v8, 0x1

    .line 149
    const/16 v9, 0x2d

    if-ne v6, v9, :cond_2

    .line 150
    const/4 v7, 0x1

    .line 151
    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_0

    .line 152
    :cond_2
    const/16 v9, 0x2b

    if-ne v6, v9, :cond_3

    .line 153
    const/4 v7, 0x0

    .line 154
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 156
    :cond_3
    return-object v3

    .line 158
    :cond_4
    const/4 v8, 0x0

    .line 159
    const/4 v7, 0x0

    .line 160
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 161
    :goto_0
    nop

    .line 164
    int-to-long v9, v1

    div-long v9, v4, v9

    .line 165
    .local v9, "limitBeforeMul":J
    const-wide/16 v11, 0x0

    .line 166
    .local v11, "result":J
    add-int/lit8 v13, v2, -0x1

    if-gt v8, v13, :cond_8

    move-wide v14, v11

    move v11, v8

    .line 167
    .local v11, "i":I
    .local v14, "result":J
    :goto_1
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v12

    .line 169
    .local v12, "digit":I
    if-gez v12, :cond_5

    return-object v3

    .line 170
    :cond_5
    cmp-long v16, v14, v9

    if-gez v16, :cond_6

    return-object v3

    .line 172
    :cond_6
    move-wide/from16 v17, v4

    .end local v4    # "limit":J
    .local v17, "limit":J
    int-to-long v3, v1

    mul-long v14, v14, v3

    .line 174
    int-to-long v3, v12

    add-long v3, v17, v3

    cmp-long v5, v14, v3

    if-gez v5, :cond_7

    const/4 v3, 0x0

    return-object v3

    .line 176
    :cond_7
    const/4 v3, 0x0

    int-to-long v4, v12

    sub-long/2addr v14, v4

    .line 166
    .end local v12    # "digit":I
    if-eq v11, v13, :cond_9

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, v17

    goto :goto_1

    .line 179
    .end local v14    # "result":J
    .end local v17    # "limit":J
    .restart local v4    # "limit":J
    .local v11, "result":J
    :cond_8
    move-wide/from16 v17, v4

    move-wide v14, v11

    .end local v4    # "limit":J
    .end local v11    # "result":J
    .restart local v14    # "result":J
    .restart local v17    # "limit":J
    :cond_9
    if-eqz v7, :cond_a

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_a
    neg-long v3, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public static final toShortOrNull(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static final toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;
    .locals 3
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "radix"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    .local v0, "int":I
    const/16 v2, -0x8000

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    int-to-short v1, v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 52
    :cond_1
    :goto_0
    return-object v1

    .line 51
    .end local v0    # "int":I
    :cond_2
    return-object v1
.end method
