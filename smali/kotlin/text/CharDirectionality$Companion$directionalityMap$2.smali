.class final Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CharDirectionality.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharDirectionality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/text/CharDirectionality;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality$Companion$directionalityMap$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,125:1\n6932#2,2:126\n7156#2,4:128\n*E\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality$Companion$directionalityMap$2\n*L\n120#1,2:126\n120#1,4:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlin/text/CharDirectionality;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;

    invoke-direct {v0}, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;-><init>()V

    sput-object v0, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;->INSTANCE:Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharDirectionality;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 120
    invoke-static {}, Lkotlin/text/CharDirectionality;->values()[Lkotlin/text/CharDirectionality;

    move-result-object v0

    .local v0, "$receiver$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    move v2, v1

    .line 126
    .local v2, "$i$f$associateBy":I
    array-length v3, v0

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 127
    .local v3, "capacity$iv":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .local v4, "destination$iv$iv":Ljava/util/Map;
    move-object v5, v0

    .local v5, "$receiver$iv$iv":[Ljava/lang/Object;
    move v6, v1

    .line 128
    .local v6, "$i$f$associateByTo":I
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v9, v5, v1

    .line 129
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .line 120
    .local v8, "$i$a$1$associateBy":I
    .local v10, "it":Lkotlin/text/CharDirectionality;
    invoke-virtual {v10}, Lkotlin/text/CharDirectionality;->getValue()I

    move-result v10

    .end local v8    # "$i$a$1$associateBy":I
    .end local v10    # "it":Lkotlin/text/CharDirectionality;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 120
    .end local v0    # "$receiver$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$associateBy":I
    .end local v3    # "capacity$iv":I
    .end local v4    # "destination$iv$iv":Ljava/util/Map;
    .end local v5    # "$receiver$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$associateByTo":I
    return-object v4
.end method
