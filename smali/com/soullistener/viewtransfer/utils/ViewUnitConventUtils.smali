.class public Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;
.super Ljava/lang/Object;
.source "ViewUnitConventUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(F)I
    .locals 1
    .param p0, "dpValue"    # F

    .line 19
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dpValue"    # F

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2dp(F)I
    .locals 1
    .param p0, "pxValue"    # F

    .line 41
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->px2dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pxValue"    # F

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 53
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(F)I
    .locals 1
    .param p0, "pxValue"    # F

    .line 85
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->px2sp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pxValue"    # F

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 97
    .local v0, "fontScale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static sp2px(F)I
    .locals 1
    .param p0, "spValue"    # F

    .line 63
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->sp2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "spValue"    # F

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 75
    .local v0, "fontScale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
