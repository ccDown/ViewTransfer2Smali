.class Lkotlin/text/StringsKt__IndentKt;
.super Ljava/lang/Object;
.source "Indent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,121:1\n111#1,9:122\n118#1:131\n113#1,4:145\n111#1,9:164\n118#1:173\n113#1,4:187\n1308#2,11:132\n1570#2,2:143\n1572#2:155\n1319#2:156\n670#2:157\n743#2,2:158\n1288#2:160\n1357#2,3:161\n1308#2,11:174\n1570#2,2:185\n1572#2:191\n1319#2:192\n1308#2,11:199\n1570#2,3:210\n1319#2:213\n120#3,6:149\n120#3,6:193\n*E\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n37#1,9:122\n37#1:131\n37#1,4:145\n76#1,9:164\n76#1:173\n76#1,4:187\n37#1,11:132\n37#1,2:143\n37#1:155\n37#1:156\n72#1:157\n72#1,2:158\n73#1:160\n73#1,3:161\n76#1,11:174\n76#1,2:185\n76#1:191\n76#1:192\n112#1,11:199\n112#1,3:210\n112#1:213\n37#1,6:149\n99#1,6:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    nop

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    .line 103
    :cond_1
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 101
    :goto_1
    nop

    .line 104
    return-object v0
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .locals 8
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$receiver$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    move v2, v1

    .line 193
    .local v2, "$i$f$indexOfFirst":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v1, v3, :cond_1

    .line 194
    .local v1, "index$iv":I
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 99
    .local v4, "$i$a$1$indexOfFirst":I
    .local v6, "it":C
    invoke-static {v6}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v7

    .end local v4    # "$i$a$1$indexOfFirst":I
    .end local v6    # "it":C
    xor-int/lit8 v6, v7, 0x1

    if-eqz v6, :cond_0

    .line 195
    goto :goto_1

    .line 193
    .restart local v4    # "$i$a$1$indexOfFirst":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "index$iv":I
    .end local v4    # "$i$a$1$indexOfFirst":I
    :cond_1
    nop

    .line 99
    const/4 v1, -0x1

    .end local v0    # "$receiver$iv":Ljava/lang/CharSequence;
    .end local v2    # "$i$f$indexOfFirst":I
    :goto_1
    move v0, v1

    .local v0, "it":I
    move v1, v3

    .local v1, "$i$a$2$let":I
    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    nop

    .end local v0    # "it":I
    .end local v1    # "$i$a$2$let":I
    :cond_2
    return v0
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "indent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    nop

    .line 97
    nop

    .line 85
    nop

    .line 86
    nop

    .line 85
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 86
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;

    invoke-direct {v1, p1}, Lkotlin/text/StringsKt__IndentKt$prependIndent$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 97
    const-string v0, "\n"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 84
    const-string p1, "    "

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final reindent$StringsKt__IndentKt(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 22
    .param p0, "$receiver"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "resultSizeEstimate"    # I
    .param p2, "indentAddFunction"    # Lkotlin/jvm/functions/Function1;
    .param p3, "indentCutFunction"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .line 112
    .local v1, "lastIndex":I
    nop

    .line 119
    nop

    .line 112
    nop

    .line 118
    nop

    .line 112
    move-object/from16 v3, p0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    move v5, v4

    .line 199
    .local v5, "$i$f$mapIndexedNotNull":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v8, v4

    .line 209
    .local v8, "$i$f$mapIndexedNotNullTo":I
    move-object v9, v7

    .local v9, "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    move v10, v4

    .line 210
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 211
    .local v11, "index$iv$iv$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .local v16, "item$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v17, v11, 0x1

    .local v17, "index$iv$iv$iv":I
    if-gez v11, :cond_1

    move/from16 v18, v0

    .end local v0    # "$i$f$reindent$StringsKt__IndentKt":I
    .local v18, "$i$f$reindent$StringsKt__IndentKt":I
    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-static {v2, v0, v4}, Lkotlin/internal/PlatformImplementationsKt;->apiVersionIsAtLeast(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    goto :goto_1

    .end local v11    # "index$iv$iv$iv":I
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v2, "Index overflow has happened."

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .end local v18    # "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v0    # "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v11    # "index$iv$iv$iv":I
    :cond_1
    move/from16 v18, v0

    .end local v0    # "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v18    # "$i$f$reindent$StringsKt__IndentKt":I
    :goto_1
    move v0, v11

    .end local v11    # "index$iv$iv$iv":I
    .local v0, "index$iv$iv":I
    move-object/from16 v2, v16

    .line 209
    .local v2, "element$iv$iv":Ljava/lang/Object;
    .local v14, "$i$a$1$forEachIndexed":I
    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .local v11, "value":Ljava/lang/String;
    move/from16 v19, v0

    .line 113
    .local v13, "$i$a$1$mapIndexedNotNull":I
    .local v19, "index":I
    move/from16 v4, v19

    .end local v19    # "index":I
    .local v4, "index":I
    if-eqz v4, :cond_2

    if-ne v4, v1, :cond_3

    :cond_2
    move-object/from16 v19, v11

    check-cast v19, Ljava/lang/CharSequence;

    invoke-static/range {v19 .. v19}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 114
    const/16 v19, 0x0

    .line 113
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    goto :goto_2

    .line 116
    :cond_3
    move/from16 v20, v0

    move-object/from16 v0, p3

    .end local v0    # "index$iv$iv":I
    .local v20, "index$iv$iv":I
    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    move/from16 v21, v1

    move-object/from16 v1, p2

    .end local v1    # "lastIndex":I
    .local v21, "lastIndex":I
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .end local v4    # "index":I
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_2

    .end local v21    # "lastIndex":I
    .restart local v1    # "lastIndex":I
    .restart local v4    # "index":I
    .restart local v11    # "value":Ljava/lang/String;
    :cond_4
    move/from16 v21, v1

    move-object/from16 v1, p2

    .line 113
    .end local v1    # "lastIndex":I
    .restart local v21    # "lastIndex":I
    :cond_5
    move-object v0, v11

    .line 116
    .end local v4    # "index":I
    .end local v11    # "value":Ljava/lang/String;
    .end local v13    # "$i$a$1$mapIndexedNotNull":I
    :goto_2
    if-eqz v0, :cond_6

    .local v0, "it$iv$iv":Ljava/lang/Object;
    move v4, v15

    .line 209
    .local v4, "$i$a$1$let":I
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    nop

    .line 211
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "element$iv$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$1$let":I
    .end local v14    # "$i$a$1$forEachIndexed":I
    .end local v20    # "index$iv$iv":I
    :cond_6
    move/from16 v11, v17

    move/from16 v0, v18

    move/from16 v1, v21

    const/4 v4, 0x0

    goto :goto_0

    .line 212
    .end local v16    # "item$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "index$iv$iv$iv":I
    .end local v18    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v21    # "lastIndex":I
    .local v0, "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v1    # "lastIndex":I
    .local v11, "index$iv$iv$iv":I
    :cond_7
    move/from16 v18, v0

    move/from16 v21, v1

    move-object/from16 v1, p2

    .line 213
    .end local v0    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v1    # "lastIndex":I
    .end local v9    # "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "index$iv$iv$iv":I
    .restart local v18    # "$i$f$reindent$StringsKt__IndentKt":I
    .restart local v21    # "lastIndex":I
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .end local v3    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapIndexedNotNull":I
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v12, p1

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 29
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "newIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "receiver$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "lines":Ljava/util/List;
    nop

    .line 74
    nop

    .line 71
    nop

    .line 73
    nop

    .line 71
    nop

    .line 72
    nop

    .line 71
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 72
    nop

    .local v3, "$receiver$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    move v5, v4

    .line 157
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v8, v4

    .line 158
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v10, "$i$a$1$unknown":I
    .local v12, "p1":Ljava/lang/String;
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    .line 72
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    .end local v10    # "$i$a$1$unknown":I
    .end local v12    # "p1":Ljava/lang/String;
    xor-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_0

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .end local v3    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 73
    nop

    .restart local v3    # "$receiver$iv":Ljava/lang/Iterable;
    move v5, v8

    .line 160
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .restart local v6    # "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .restart local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    move v8, v10

    .line 161
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 162
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 73
    .local v10, "$i$a$2$unknown":I
    .restart local v12    # "p1":Ljava/lang/String;
    invoke-static {v12}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v12

    .end local v10    # "$i$a$2$unknown":I
    .end local v12    # "p1":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 163
    :cond_2
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .end local v3    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 74
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 71
    :cond_3
    const/4 v3, 0x0

    .line 76
    .local v3, "minCommonIndent":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    .local v5, "resultSizeEstimate$iv":I
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .local v6, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v7, v1

    .local v7, "$receiver$iv":Ljava/util/List;
    move v8, v4

    .line 164
    .local v8, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    .line 165
    .local v9, "lastIndex$iv":I
    nop

    .line 172
    nop

    .line 165
    nop

    .line 173
    nop

    .line 165
    move-object v10, v7

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$receiver$iv$iv":Ljava/lang/Iterable;
    move v11, v4

    .line 174
    .local v11, "$i$f$mapIndexedNotNull":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v13, v10

    .local v13, "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    move v14, v4

    .line 184
    .local v14, "$i$f$mapIndexedNotNullTo":I
    move-object v15, v13

    .local v15, "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    move/from16 v16, v4

    .line 185
    .local v16, "$i$f$forEachIndexed":I
    const/16 v17, 0x0

    .line 186
    .local v17, "index$iv$iv$iv$iv":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .local v22, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v23, v17, 0x1

    .local v23, "index$iv$iv$iv$iv":I
    if-gez v17, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .local v17, "index$iv$iv$iv":I
    :cond_4
    move-object/from16 v24, v22

    .line 184
    .local v4, "$i$a$1$forEachIndexed":I
    .local v24, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v24

    check-cast v25, Ljava/lang/String;

    .local v25, "value$iv":Ljava/lang/String;
    move/from16 v26, v17

    .line 187
    .local v19, "$i$a$1$mapIndexedNotNull":I
    .local v26, "index$iv":I
    move/from16 v0, v26

    .end local v26    # "index$iv":I
    .local v0, "index$iv":I
    if-eqz v0, :cond_5

    if-ne v0, v9, :cond_6

    :cond_5
    move-object/from16 v26, v25

    check-cast v26, Ljava/lang/CharSequence;

    invoke-static/range {v26 .. v26}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 188
    const/16 v26, 0x0

    .line 187
    move-object/from16 v0, v26

    goto :goto_4

    .line 190
    :cond_6
    move-object/from16 v27, v25

    .line 76
    .local v20, "$i$a$1$reindent":I
    .local v27, "line":Ljava/lang/String;
    move/from16 v28, v0

    move-object/from16 v0, v27

    .end local v27    # "line":Ljava/lang/String;
    .local v0, "line":Ljava/lang/String;
    .local v28, "index$iv":I
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "line":Ljava/lang/String;
    .end local v20    # "$i$a$1$reindent":I
    if-eqz v0, :cond_7

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .end local v25    # "value$iv":Ljava/lang/String;
    .end local v28    # "index$iv":I
    goto :goto_4

    .line 190
    .restart local v25    # "value$iv":Ljava/lang/String;
    .restart local v28    # "index$iv":I
    :cond_7
    nop

    .line 187
    move-object/from16 v0, v25

    .line 190
    .end local v19    # "$i$a$1$mapIndexedNotNull":I
    .end local v25    # "value$iv":Ljava/lang/String;
    .end local v28    # "index$iv":I
    :goto_4
    if-eqz v0, :cond_8

    .line 184
    .local v0, "it$iv$iv$iv":Ljava/lang/Object;
    .local v21, "$i$a$1$let":I
    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    nop

    .line 186
    .end local v0    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$1$forEachIndexed":I
    .end local v17    # "index$iv$iv$iv":I
    .end local v21    # "$i$a$1$let":I
    .end local v24    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_8
    move/from16 v17, v23

    move-object/from16 v0, p0

    goto :goto_3

    .line 191
    .end local v22    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v23    # "index$iv$iv$iv$iv":I
    .local v17, "index$iv$iv$iv$iv":I
    :cond_9
    nop

    .line 192
    .end local v15    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$forEachIndexed":I
    .end local v17    # "index$iv$iv$iv$iv":I
    nop

    .end local v12    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v13    # "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapIndexedNotNullTo":I
    move-object v0, v12

    check-cast v0, Ljava/util/List;

    .end local v10    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapIndexedNotNull":I
    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v0

    check-cast v11, Ljava/lang/Appendable;

    const-string v0, "\n"

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7c

    const/16 v19, 0x0

    invoke-static/range {v10 .. v19}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v5    # "resultSizeEstimate$iv":I
    .end local v6    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "$receiver$iv":Ljava/util/List;
    .end local v8    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v9    # "lastIndex$iv":I
    return-object v0
.end method

.method public static synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 68
    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 39
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "newIndent"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "marginPrefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const-string v1, "receiver$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newIndent"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marginPrefix"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_b

    .line 35
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v10

    .line 37
    .local v10, "lines":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    mul-int v2, v2, v3

    add-int v11, v1, v2

    .local v11, "resultSizeEstimate$iv":I
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v12

    .local v12, "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    move-object v13, v10

    .local v13, "$receiver$iv":Ljava/util/List;
    move v14, v9

    .line 122
    .local v14, "$i$f$reindent$StringsKt__IndentKt":I
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v15

    .line 123
    .local v15, "lastIndex$iv":I
    nop

    .line 130
    nop

    .line 123
    nop

    .line 131
    nop

    .line 123
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/Iterable;

    .local v16, "$receiver$iv$iv":Ljava/lang/Iterable;
    move/from16 v17, v9

    .line 132
    .local v17, "$i$f$mapIndexedNotNull":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v18, v16

    .local v18, "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    move/from16 v19, v9

    .line 142
    .local v19, "$i$f$mapIndexedNotNullTo":I
    move-object/from16 v20, v18

    .local v20, "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    move/from16 v21, v9

    .line 143
    .local v21, "$i$f$forEachIndexed":I
    const/4 v1, 0x0

    .line 144
    .local v1, "index$iv$iv$iv$iv":I
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .local v25, "item$iv$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v26, v1, 0x1

    .local v26, "index$iv$iv$iv$iv":I
    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move/from16 v27, v1

    .end local v1    # "index$iv$iv$iv$iv":I
    .local v27, "index$iv$iv$iv":I
    move-object/from16 v28, v25

    .local v28, "element$iv$iv$iv":Ljava/lang/Object;
    move/from16 v29, v2

    .line 142
    .local v29, "$i$a$1$forEachIndexed":I
    move-object/from16 v30, v28

    check-cast v30, Ljava/lang/String;

    .local v30, "value$iv":Ljava/lang/String;
    move/from16 v2, v27

    .local v2, "index$iv":I
    move/from16 v31, v3

    .line 145
    .local v31, "$i$a$1$mapIndexedNotNull":I
    const/16 v32, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v15, :cond_2

    :cond_1
    move-object/from16 v1, v30

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    nop

    .line 145
    move-object v9, v6

    move-object/from16 v30, v32

    goto/16 :goto_6

    .line 148
    :cond_2
    move-object/from16 v3, v30

    .local v3, "line":Ljava/lang/String;
    move/from16 v33, v4

    .line 38
    .local v33, "$i$a$2$reindent":I
    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, "$receiver$iv":Ljava/lang/CharSequence;
    move/from16 v34, v5

    .line 149
    .local v34, "$i$f$indexOfFirst":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    const/4 v9, -0x1

    if-ge v5, v4, :cond_4

    .line 150
    .local v5, "index$iv":I
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v35

    .line 38
    .local v23, "$i$a$1$indexOfFirst":I
    .local v35, "it":C
    invoke-static/range {v35 .. v35}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v36

    .end local v23    # "$i$a$1$indexOfFirst":I
    .end local v35    # "it":C
    xor-int/lit8 v35, v36, 0x1

    if-eqz v35, :cond_3

    .line 151
    goto :goto_2

    .line 149
    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    goto :goto_1

    .line 154
    .end local v5    # "index$iv":I
    :cond_4
    nop

    .line 38
    const/4 v5, -0x1

    .line 40
    .end local v1    # "$receiver$iv":Ljava/lang/CharSequence;
    .end local v34    # "$i$f$indexOfFirst":I
    .local v5, "firstNonWhitespaceIndex":I
    :goto_2
    nop

    .line 41
    if-ne v5, v9, :cond_5

    .line 40
    move/from16 v36, v2

    move-object v1, v3

    move-object v9, v6

    .end local v2    # "index$iv":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "firstNonWhitespaceIndex":I
    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .local v1, "line":Ljava/lang/String;
    .local v9, "destination$iv$iv$iv":Ljava/util/Collection;
    .restart local v34    # "$i$f$indexOfFirst":I
    .local v36, "index$iv":I
    :goto_3
    move-object/from16 v2, v32

    goto :goto_4

    .line 42
    .end local v1    # "line":Ljava/lang/String;
    .end local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v34    # "$i$f$indexOfFirst":I
    .end local v36    # "index$iv":I
    .restart local v2    # "index$iv":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "firstNonWhitespaceIndex":I
    .restart local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    :cond_5
    const/4 v4, 0x0

    const/4 v9, 0x4

    const/16 v35, 0x0

    move-object v1, v3

    move/from16 v36, v2

    .end local v2    # "index$iv":I
    .restart local v36    # "index$iv":I
    move-object/from16 v2, p2

    move-object/from16 v37, v3

    .end local v3    # "line":Ljava/lang/String;
    .local v37, "line":Ljava/lang/String;
    move v3, v5

    move/from16 v38, v5

    .end local v5    # "firstNonWhitespaceIndex":I
    .local v38, "firstNonWhitespaceIndex":I
    move v5, v9

    move-object v9, v6

    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .restart local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    move-object/from16 v6, v35

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v5, v38, v1

    move-object/from16 v1, v37

    .end local v37    # "line":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    .end local v1    # "line":Ljava/lang/String;
    .restart local v34    # "$i$f$indexOfFirst":I
    .restart local v37    # "line":Ljava/lang/String;
    :cond_7
    move-object/from16 v1, v37

    .end local v37    # "line":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    goto :goto_3

    .line 40
    .end local v38    # "firstNonWhitespaceIndex":I
    :goto_4
    nop

    .line 44
    nop

    .end local v1    # "line":Ljava/lang/String;
    .end local v33    # "$i$a$2$reindent":I
    if-eqz v2, :cond_8

    invoke-interface {v12, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 145
    .end local v30    # "value$iv":Ljava/lang/String;
    .end local v36    # "index$iv":I
    move-object/from16 v30, v1

    goto :goto_5

    .line 148
    .restart local v30    # "value$iv":Ljava/lang/String;
    .restart local v36    # "index$iv":I
    :cond_8
    nop

    .line 145
    .end local v30    # "value$iv":Ljava/lang/String;
    .end local v31    # "$i$a$1$mapIndexedNotNull":I
    .end local v34    # "$i$f$indexOfFirst":I
    .end local v36    # "index$iv":I
    :goto_5
    move/from16 v4, v33

    move/from16 v5, v34

    .line 148
    :goto_6
    if-eqz v30, :cond_9

    move-object/from16 v1, v30

    .local v1, "it$iv$iv$iv":Ljava/lang/Object;
    move/from16 v2, v24

    .line 142
    .local v2, "$i$a$1$let":I
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    nop

    .line 144
    .end local v1    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$1$let":I
    .end local v27    # "index$iv$iv$iv":I
    .end local v28    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v29    # "$i$a$1$forEachIndexed":I
    :cond_9
    move-object v6, v9

    move/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v31

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 155
    .end local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v25    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v26    # "index$iv$iv$iv$iv":I
    .local v1, "index$iv$iv$iv$iv":I
    .restart local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    :cond_a
    move-object v9, v6

    .line 156
    .end local v1    # "index$iv$iv$iv$iv":I
    .end local v6    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v20    # "$receiver$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v21    # "$i$f$forEachIndexed":I
    .restart local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    nop

    .end local v9    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v18    # "$receiver$iv$iv$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapIndexedNotNullTo":I
    move-object v1, v9

    check-cast v1, Ljava/util/List;

    .end local v16    # "$receiver$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapIndexedNotNull":I
    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Iterable;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Appendable;

    const-string v1, "\n"

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x7c

    const/16 v25, 0x0

    invoke-static/range {v16 .. v25}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v11    # "resultSizeEstimate$iv":I
    .end local v12    # "indentAddFunction$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "$receiver$iv":Ljava/util/List;
    .end local v14    # "$i$f$reindent$StringsKt__IndentKt":I
    .end local v15    # "lastIndex$iv":I
    return-object v1

    .line 34
    .end local v10    # "lines":Ljava/util/List;
    :cond_b
    const/4 v1, 0x0

    .local v1, "$i$a$1$require":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v1, "marginPrefix must be non-blank string."

    .end local v1    # "$i$a$1$require":I
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 33
    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, "|"

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "marginPrefix"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 25
    const-string p1, "|"

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
