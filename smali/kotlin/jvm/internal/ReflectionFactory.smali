.class public Lkotlin/jvm/internal/ReflectionFactory;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# static fields
.field private static final KOTLIN_JVM_FUNCTIONS:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;

    .line 15
    new-instance v0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "internalName"    # Ljava/lang/String;

    .line 19
    new-instance v0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public function(Lkotlin/jvm/internal/FunctionReference;)Lkotlin/reflect/KFunction;
    .locals 0
    .param p1, "f"    # Lkotlin/jvm/internal/FunctionReference;

    .line 48
    return-object p1
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;

    .line 27
    new-instance v0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "internalName"    # Ljava/lang/String;

    .line 31
    new-instance v0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "moduleName"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lkotlin/jvm/internal/PackageReference;

    invoke-direct {v0, p1, p2}, Lkotlin/jvm/internal/PackageReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;
    .locals 0
    .param p1, "p"    # Lkotlin/jvm/internal/MutablePropertyReference0;

    .line 58
    return-object p1
.end method

.method public mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;
    .locals 0
    .param p1, "p"    # Lkotlin/jvm/internal/MutablePropertyReference1;

    .line 66
    return-object p1
.end method

.method public mutableProperty2(Lkotlin/jvm/internal/MutablePropertyReference2;)Lkotlin/reflect/KMutableProperty2;
    .locals 0
    .param p1, "p"    # Lkotlin/jvm/internal/MutablePropertyReference2;

    .line 74
    return-object p1
.end method

.method public property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;
    .locals 0
    .param p1, "p"    # Lkotlin/jvm/internal/PropertyReference0;

    .line 54
    return-object p1
.end method

.method public property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;
    .locals 0
    .param p1, "p"    # Lkotlin/jvm/internal/PropertyReference1;

    .line 62
    return-object p1
.end method

.method public property2(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;
    .locals 0
    .param p1, "p"    # Lkotlin/jvm/internal/PropertyReference2;

    .line 70
    return-object p1
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 2
    .param p1, "lambda"    # Lkotlin/jvm/internal/FunctionBase;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "result":Ljava/lang/String;
    const-string v1, "kotlin.jvm.functions."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "kotlin.jvm.functions."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1
    .param p1, "lambda"    # Lkotlin/jvm/internal/Lambda;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
