.class public Lpub/devrel/easypermissions/EasyPermissions;
.super Ljava/lang/Object;
.source "EasyPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;,
        Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyPermissions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 77
    const-string v0, "EasyPermissions"

    const-string v2, "hasPermissions: API version < M, returning true by default"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v1

    .line 85
    :cond_0
    if-eqz p0, :cond_3

    .line 89
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 90
    .local v4, "perm":Ljava/lang/String;
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    return v2

    .line 89
    .end local v4    # "perm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_2
    return v1

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t check permissions for null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isUsingAndroidAnnotations(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 350
    return v1

    .line 353
    :cond_0
    :try_start_0
    const-string v0, "org.androidannotations.api.view.HasViews"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 354
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 355
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method private static notifyAlreadyHasPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "requestCode"    # I
    .param p2, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 293
    array-length v0, p2

    new-array v0, v0, [I

    .line 294
    .local v0, "grantResults":[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 295
    aput v1, v0, v2

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, p2, v0, v2}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public static varargs onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V
    .locals 6
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "receivers"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "granted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "denied":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 180
    aget-object v4, p1, v3

    .line 181
    .local v4, "perm":Ljava/lang/String;
    aget v5, p2, v3

    if-nez v5, :cond_0

    .line 182
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v4    # "perm":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "i":I
    :cond_1
    array-length v3, p3

    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v4, p3, v2

    .line 191
    .local v4, "object":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 192
    instance-of v5, v4, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v5, :cond_2

    .line 193
    move-object v5, v4

    check-cast v5, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-interface {v5, p0, v0}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsGranted(ILjava/util/List;)V

    .line 198
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 199
    instance-of v5, v4, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v5, :cond_3

    .line 200
    move-object v5, v4

    check-cast v5, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-interface {v5, p0, v1}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsDenied(ILjava/util/List;)V

    .line 205
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 206
    invoke-static {v4, p0}, Lpub/devrel/easypermissions/EasyPermissions;->runAnnotatedMethods(Ljava/lang/Object;I)V

    .line 189
    .end local v4    # "object":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 209
    :cond_5
    return-void
.end method

.method public static permissionPermanentlyDenied(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deniedPermission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 250
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->permissionPermanentlyDenied(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static permissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deniedPermission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->permissionPermanentlyDenied(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 112
    new-instance v0, Lpub/devrel/easypermissions/PermissionRequest$Builder;

    invoke-direct {v0, p0, p2, p3}, Lpub/devrel/easypermissions/PermissionRequest$Builder;-><init>(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->setRationale(Ljava/lang/String;)Lpub/devrel/easypermissions/PermissionRequest$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->build()Lpub/devrel/easypermissions/PermissionRequest;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Lpub/devrel/easypermissions/PermissionRequest;)V

    .line 116
    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 126
    new-instance v0, Lpub/devrel/easypermissions/PermissionRequest$Builder;

    invoke-direct {v0, p0, p2, p3}, Lpub/devrel/easypermissions/PermissionRequest$Builder;-><init>(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->setRationale(Ljava/lang/String;)Lpub/devrel/easypermissions/PermissionRequest$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->build()Lpub/devrel/easypermissions/PermissionRequest;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Lpub/devrel/easypermissions/PermissionRequest;)V

    .line 130
    return-void
.end method

.method public static requestPermissions(Lpub/devrel/easypermissions/PermissionRequest;)V
    .locals 10
    .param p0, "request"    # Lpub/devrel/easypermissions/PermissionRequest;

    .line 141
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getHelper()Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPerms()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getHelper()Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getRequestCode()I

    move-result v1

    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPerms()[Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v0, v1, v2}, Lpub/devrel/easypermissions/EasyPermissions;->notifyAlreadyHasPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    .line 144
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getHelper()Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getRationale()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getTheme()I

    move-result v7

    .line 153
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getRequestCode()I

    move-result v8

    .line 154
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPerms()[Ljava/lang/String;

    move-result-object v9

    .line 148
    invoke-virtual/range {v3 .. v9}, Lpub/devrel/easypermissions/helper/PermissionHelper;->requestPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private static runAnnotatedMethods(Ljava/lang/Object;I)V
    .locals 10
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "requestCode"    # I

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 310
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {p0}, Lpub/devrel/easypermissions/EasyPermissions;->isUsingAndroidAnnotations(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 314
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 315
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 316
    .local v5, "method":Ljava/lang/reflect/Method;
    const-class v6, Lpub/devrel/easypermissions/AfterPermissionGranted;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lpub/devrel/easypermissions/AfterPermissionGranted;

    .line 317
    .local v6, "ann":Lpub/devrel/easypermissions/AfterPermissionGranted;
    if-eqz v6, :cond_3

    .line 319
    invoke-interface {v6}, Lpub/devrel/easypermissions/AfterPermissionGranted;->value()I

    move-result v7

    if-ne v7, p1, :cond_3

    .line 321
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-gtz v7, :cond_2

    .line 328
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 329
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 331
    :cond_1
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 334
    :catch_0
    move-exception v7

    .line 335
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v8, "EasyPermissions"

    const-string v9, "runDefaultMethod:InvocationTargetException"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 332
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    .line 333
    .local v7, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "EasyPermissions"

    const-string v9, "runDefaultMethod:IllegalAccessException"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "ann":Lpub/devrel/easypermissions/AfterPermissionGranted;
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    goto :goto_3

    .line 322
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "ann":Lpub/devrel/easypermissions/AfterPermissionGranted;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot execute method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it is non-void method and/or has input parameters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "ann":Lpub/devrel/easypermissions/AfterPermissionGranted;
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 341
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_5
    return-void
.end method

.method public static varargs somePermissionDenied(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 271
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionDenied([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs somePermissionDenied(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 279
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionDenied([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 228
    .local p1, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionPermanentlyDenied(Ljava/util/List;)Z

    move-result v0

    .line 228
    return v0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/util/List;)Z
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 237
    .local p1, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->somePermissionPermanentlyDenied(Ljava/util/List;)Z

    move-result v0

    .line 237
    return v0
.end method
