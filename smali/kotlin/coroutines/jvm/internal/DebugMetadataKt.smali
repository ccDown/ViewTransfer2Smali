.class public final Lkotlin/coroutines/jvm/internal/DebugMetadataKt;
.super Ljava/lang/Object;
.source "DebugMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/DebugMetadataKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,92:1\n37#2,2:93\n*E\n*S KotlinDebug\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/DebugMetadataKt\n*L\n89#1,2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0008H\u0002\u001a\u000c\u0010\t\u001a\u00020\u0001*\u00020\u0008H\u0002\u001a\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b*\u00020\u0008H\u0001\u00a2\u0006\u0002\u0010\r\u001a\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\u0010\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "COROUTINES_DEBUG_METADATA_VERSION",
        "",
        "checkDebugMetadataVersion",
        "",
        "expected",
        "actual",
        "getDebugMetadataAnnotation",
        "Lkotlin/coroutines/jvm/internal/DebugMetadata;",
        "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;",
        "getLabel",
        "getSpilledVariableFieldMapping",
        "",
        "",
        "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)[Ljava/lang/String;",
        "getStackTraceElementImpl",
        "Ljava/lang/StackTraceElement;",
        "getStackTraceElement",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final COROUTINES_DEBUG_METADATA_VERSION:I = 0x1


# direct methods
.method private static final checkDebugMetadataVersion(II)V
    .locals 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .line 60
    if-gt p1, p0, :cond_0

    .line 63
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug metadata version mismatch. Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Please update the Kotlin standard library."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private static final getDebugMetadataAnnotation(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Lkotlin/coroutines/jvm/internal/DebugMetadata;
    .locals 2
    .param p0, "$receiver"    # Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/coroutines/jvm/internal/DebugMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/jvm/internal/DebugMetadata;

    return-object v0
.end method

.method private static final getLabel(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)I
    .locals 4
    .param p0, "$receiver"    # Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 51
    nop

    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    .local v0, "field":Ljava/lang/reflect/Field;
    const-string v1, "field"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v2, v1

    goto :goto_1

    .line 55
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 57
    return v2
.end method

.method public static final getSpilledVariableFieldMapping(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)[Ljava/lang/String;
    .locals 9
    .param p0, "$receiver"    # Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getSpilledVariableFieldMapping"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugMetadataKt;->getDebugMetadataAnnotation(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Lkotlin/coroutines/jvm/internal/DebugMetadata;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 80
    .local v0, "debugMetadata":Lkotlin/coroutines/jvm/internal/DebugMetadata;
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->v()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lkotlin/coroutines/jvm/internal/DebugMetadataKt;->checkDebugMetadataVersion(II)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "res":Ljava/util/ArrayList;
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugMetadataKt;->getLabel(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)I

    move-result v2

    .line 83
    .local v2, "label":I
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->i()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget v7, v3, v6

    .line 84
    .local v6, "i":I
    .local v7, "labelOfIndex":I
    if-ne v7, v2, :cond_0

    .line 85
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->s()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->n()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    .end local v6    # "i":I
    .end local v7    # "labelOfIndex":I
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    .local v3, "$receiver$iv":Ljava/util/Collection;
    move v4, v5

    .line 93
    .local v4, "$i$f$toTypedArray":I
    move-object v6, v3

    .line 94
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .end local v3    # "$receiver$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v5, [Ljava/lang/String;

    return-object v5

    .restart local v3    # "$receiver$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$toTypedArray":I
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    new-instance v5, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v5, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    .end local v0    # "debugMetadata":Lkotlin/coroutines/jvm/internal/DebugMetadata;
    .end local v1    # "res":Ljava/util/ArrayList;
    .end local v2    # "label":I
    .end local v3    # "$receiver$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getStackTraceElement(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/StackTraceElement;
    .locals 7
    .param p0, "$receiver"    # Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getStackTraceElement"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugMetadataKt;->getDebugMetadataAnnotation(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Lkotlin/coroutines/jvm/internal/DebugMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    .local v0, "debugMetadata":Lkotlin/coroutines/jvm/internal/DebugMetadata;
    const/4 v1, 0x1

    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->v()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/DebugMetadataKt;->checkDebugMetadataVersion(II)V

    .line 42
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugMetadataKt;->getLabel(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)I

    move-result v1

    .line 43
    .local v1, "label":I
    if-gez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->l()[I

    move-result-object v2

    aget v2, v2, v1

    .line 44
    .local v2, "lineNumber":I
    :goto_0
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->m()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 40
    .end local v0    # "debugMetadata":Lkotlin/coroutines/jvm/internal/DebugMetadata;
    .end local v1    # "label":I
    .end local v2    # "lineNumber":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
