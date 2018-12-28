.class public final Lcom/soullistener/viewtransfer/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25;
    }
.end annotation


# static fields
.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final HANDLER:Landroid/os/Handler;

.field private static sBgColor:I

.field private static sBgResource:I

.field private static sGravity:I

.field private static sMsgColor:I

.field private static sMsgTextSize:I

.field private static sToast:Landroid/widget/Toast;

.field private static sXOffset:I

.field private static sYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sGravity:I

    .line 37
    sput v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sXOffset:I

    .line 38
    sput v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sYOffset:I

    .line 39
    const v1, -0x1000001

    sput v1, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    .line 40
    sput v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgResource:I

    .line 41
    sput v1, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sMsgColor:I

    .line 42
    sput v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sMsgTextSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 30
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .line 30
    sput-object p0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 30
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sMsgColor:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 30
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sMsgTextSize:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 30
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sGravity:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 30
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sXOffset:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 30
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sYOffset:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .line 30
    invoke-static {p0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->setBg(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->showToast()V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->setBg()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    .line 215
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 218
    :cond_0
    return-void
.end method

.method private static getView(I)Landroid/view/View;
    .locals 2
    .param p0, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 330
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 331
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    nop

    :cond_0
    return-object v1
.end method

.method private static setBg()V
    .locals 5

    .line 286
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgResource:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 287
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, "toastView":Landroid/view/View;
    sget v1, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgResource:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    .end local v0    # "toastView":Landroid/view/View;
    goto :goto_0

    :cond_0
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    const v1, -0x1000001

    if-eq v0, v1, :cond_3

    .line 290
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 291
    .restart local v0    # "toastView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 292
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 293
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 297
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 298
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 300
    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    .end local v0    # "toastView":Landroid/view/View;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    return-void
.end method

.method private static setBg(Landroid/widget/TextView;)V
    .locals 7
    .param p0, "tvMsg"    # Landroid/widget/TextView;

    .line 307
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgResource:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 308
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "toastView":Landroid/view/View;
    sget v2, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgResource:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 310
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 311
    .end local v0    # "toastView":Landroid/view/View;
    goto :goto_0

    :cond_0
    sget v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    const v2, -0x1000001

    if-eq v0, v2, :cond_4

    .line 312
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 313
    .restart local v0    # "toastView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 314
    .local v2, "tvBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 315
    .local v3, "msgBg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 316
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 317
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 318
    :cond_1
    if-eqz v2, :cond_2

    .line 319
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 320
    :cond_2
    if-eqz v3, :cond_3

    .line 321
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 323
    :cond_3
    sget v1, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 326
    .end local v0    # "toastView":Landroid/view/View;
    .end local v2    # "tvBg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "msgBg":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_0
    return-void
.end method

.method public static setBgColor(I)V
    .locals 0
    .param p0, "backgroundColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 67
    sput p0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgColor:I

    .line 68
    return-void
.end method

.method public static setBgResource(I)V
    .locals 0
    .param p0, "bgResource"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 76
    sput p0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sBgResource:I

    .line 77
    return-void
.end method

.method public static setGravity(III)V
    .locals 0
    .param p0, "gravity"    # I
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .line 56
    sput p0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sGravity:I

    .line 57
    sput p1, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sXOffset:I

    .line 58
    sput p2, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sYOffset:I

    .line 59
    return-void
.end method

.method public static setMsgColor(I)V
    .locals 0
    .param p0, "msgColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 85
    sput p0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sMsgColor:I

    .line 86
    return-void
.end method

.method public static setMsgTextSize(I)V
    .locals 0
    .param p0, "textSize"    # I

    .line 94
    sput p0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sMsgTextSize:I

    .line 95
    return-void
.end method

.method private static show(II)V
    .locals 1
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "duration"    # I

    .line 221
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    .line 222
    return-void
.end method

.method private static varargs show(II[Ljava/lang/Object;)V
    .locals 1
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "duration"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/soullistener/viewtransfer/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    .line 226
    return-void
.end method

.method private static show(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I

    .line 256
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/soullistener/viewtransfer/utils/ToastUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method private static show(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "duration"    # I

    .line 233
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/soullistener/viewtransfer/utils/ToastUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method private static varargs show(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "duration"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 229
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    .line 230
    return-void
.end method

.method public static showCustomLong(I)Landroid/view/View;
    .locals 2
    .param p0, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 206
    invoke-static {p0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Landroid/view/View;I)V

    .line 208
    return-object v0
.end method

.method public static showCustomShort(I)Landroid/view/View;
    .locals 2
    .param p0, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 195
    invoke-static {p0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Landroid/view/View;I)V

    .line 197
    return-object v0
.end method

.method public static showLong(I)V
    .locals 1
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 158
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(II)V

    .line 159
    return-void
.end method

.method public static varargs showLong(I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;

    .line 168
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(II)V

    goto :goto_0

    .line 171
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(II[Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    .line 150
    return-void
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 182
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 185
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 187
    :goto_0
    return-void
.end method

.method public static showShort(I)V
    .locals 1
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(II)V

    .line 113
    return-void
.end method

.method public static varargs showShort(I[Ljava/lang/Object;)V
    .locals 2
    .param p0, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_0

    .line 123
    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(II)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(II[Ljava/lang/Object;)V

    .line 127
    :goto_0
    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    .line 104
    return-void
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_0

    .line 137
    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/soullistener/viewtransfer/utils/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void
.end method

.method private static showToast()V
    .locals 3

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 275
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 276
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 277
    sget-object v1, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25;

    invoke-direct {v2}, Lcom/soullistener/viewtransfer/utils/ToastUtils$ApplicationContextWrapperForApi25;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/soullistener/viewtransfer/utils/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    return-void
.end method
