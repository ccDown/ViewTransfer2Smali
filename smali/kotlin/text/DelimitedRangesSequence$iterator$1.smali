.class public final Lkotlin/text/DelimitedRangesSequence$iterator$1;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/DelimitedRangesSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/ranges/IntRange;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lkotlin/ranges/IntRange;",
        "counter",
        "",
        "getCounter",
        "()I",
        "setCounter",
        "(I)V",
        "currentStartIndex",
        "getCurrentStartIndex",
        "setCurrentStartIndex",
        "nextItem",
        "getNextItem",
        "()Lkotlin/ranges/IntRange;",
        "setNextItem",
        "(Lkotlin/ranges/IntRange;)V",
        "nextSearchIndex",
        "getNextSearchIndex",
        "setNextSearchIndex",
        "nextState",
        "getNextState",
        "setNextState",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private counter:I

.field private currentStartIndex:I

.field private nextItem:Lkotlin/ranges/IntRange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextSearchIndex:I

.field private nextState:I

.field final synthetic this$0:Lkotlin/text/DelimitedRangesSequence;


# direct methods
.method constructor <init>(Lkotlin/text/DelimitedRangesSequence;)V
    .locals 3
    .param p1, "$outer"    # Lkotlin/text/DelimitedRangesSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1071
    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    const/4 v0, -0x1

    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1073
    invoke-static {p1}, Lkotlin/text/DelimitedRangesSequence;->access$getStartIndex$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v0

    invoke-static {p1}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    .line 1074
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return-void
.end method

.method private final calcNext()V
    .locals 6

    .line 1079
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1080
    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1081
    const/4 v0, 0x0

    check-cast v0, Lkotlin/ranges/IntRange;

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    goto/16 :goto_1

    .line 1083
    :cond_0
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    add-int/2addr v0, v3

    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 1084
    :cond_2
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    new-instance v1, Lkotlin/ranges/IntRange;

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1085
    iput v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_0

    .line 1087
    :cond_3
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->access$getGetNextMatch$p(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 1088
    .local v0, "match":Lkotlin/Pair;
    if-nez v0, :cond_4

    .line 1089
    iget v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    new-instance v4, Lkotlin/ranges/IntRange;

    iget-object v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v5}, Lkotlin/text/DelimitedRangesSequence;->access$getInput$p(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {v4, v1, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1090
    iput v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_0

    .line 1092
    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1093
    .local v4, "length":I
    iget v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    invoke-static {v5, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    iput-object v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1094
    add-int v5, v2, v4

    iput v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    .line 1095
    iget v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    if-nez v4, :cond_5

    const/4 v1, 0x1

    nop

    :cond_5
    add-int/2addr v5, v1

    iput v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    .line 1096
    .end local v0    # "match":Lkotlin/Pair;
    .end local v2    # "index":I
    .end local v4    # "length":I
    :goto_0
    nop

    .line 1097
    nop

    .line 1098
    iput v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1099
    :goto_1
    nop

    .line 1100
    return-void
.end method


# virtual methods
.method public final getCounter()I
    .locals 1

    .line 1076
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    return v0
.end method

.method public final getCurrentStartIndex()I
    .locals 1

    .line 1073
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    return v0
.end method

.method public final getNextItem()Lkotlin/ranges/IntRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1075
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public final getNextSearchIndex()I
    .locals 1

    .line 1074
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return v0
.end method

.method public final getNextState()I
    .locals 1

    .line 1072
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1115
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1116
    invoke-direct {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->calcNext()V

    .line 1117
    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->next()Lkotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public next()Lkotlin/ranges/IntRange;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1103
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1104
    invoke-direct {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->calcNext()V

    .line 1105
    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    if-eqz v0, :cond_1

    .line 1109
    .local v0, "result":Lkotlin/ranges/IntRange;
    const/4 v2, 0x0

    check-cast v2, Lkotlin/ranges/IntRange;

    iput-object v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    .line 1110
    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1111
    return-object v0

    .line 1107
    .end local v0    # "result":Lkotlin/ranges/IntRange;
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCounter(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1076
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    return-void
.end method

.method public final setCurrentStartIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1073
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    return-void
.end method

.method public final setNextItem(Lkotlin/ranges/IntRange;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1075
    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    return-void
.end method

.method public final setNextSearchIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1074
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return-void
.end method

.method public final setNextState(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1072
    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    return-void
.end method
