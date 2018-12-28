.class public Lcom/soullistener/viewtransfer/utils/ViewTransUtils;
.super Ljava/lang/Object;
.source "ViewTransUtils.java"


# static fields
.field public static FileName:Ljava/lang/String;

.field public static final FileSavePath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->FileSavePath:Ljava/io/File;

    .line 30
    const-string v0, "viewsave.txt"

    sput-object v0, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->FileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bean2File(Ljava/io/File;Lcom/soullistener/viewtransfer/model/ViewTreeBean;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "viewTreeBean"    # Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    .line 116
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    return v1

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 128
    .local v0, "objectOutputStream":Ljava/io/ObjectOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bean2File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/orhanobut/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 132
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    const/4 v1, 0x1

    return v1

    .line 134
    .end local v0    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    return v1
.end method

.method public static beanTransView(Landroid/content/Context;Lcom/soullistener/viewtransfer/model/ViewSaveBean;)Landroid/view/View;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewSaveBean"    # Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    .line 238
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewContent()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->viewTransfer(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewInfo()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 241
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewInfo()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 243
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewInfo()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->getWidth()I

    move-result v1

    .line 244
    .local v1, "dpWidth":I
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewInfo()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->getHeight()I

    move-result v2

    .line 246
    .local v2, "dpHeight":I
    int-to-float v3, v1

    invoke-static {v3}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->dp2px(F)I

    move-result v3

    .line 247
    .local v3, "pxWidth":I
    int-to-float v4, v2

    invoke-static {v4}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->dp2px(F)I

    move-result v4

    .line 249
    .local v4, "pxHeight":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bean---->>>>>view"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewInfo()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->getX()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewInfo()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;->getY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 252
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewResource()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->getBackColor()I

    move-result v6

    .line 256
    .local v6, "backColor":I
    const/4 v7, -0x1

    if-eq v7, v6, :cond_0

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewResource()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    move-result-object v7

    invoke-virtual {v7}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;->getBackImage()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "backImage":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 262
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;->getViewContent()Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;->getContent()Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "text":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 266
    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_2
    return-object v0
.end method

.method public static file2Bean(Ljava/io/File;)Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 151
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 152
    .local v0, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    .line 154
    .local v1, "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file2Bean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/orhanobut/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-object v1

    .line 164
    .end local v0    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v1    # "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 158
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 167
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getColor(Landroid/view/View;II)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 297
    invoke-static {p1, p2}, Lcom/soullistener/viewtransfer/utils/GBData;->getColor(II)I

    move-result v0

    return v0
.end method

.method public static getWH(Landroid/view/View;)[I
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 321
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 322
    .local v0, "wh":[I
    const/4 v1, 0x0

    .line 323
    .local v1, "widthModel":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .line 330
    .local v1, "heightModel":I
    .local v3, "widthModel":I
    :goto_0
    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    if-ge v1, v4, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    return-object v0

    .line 331
    :cond_1
    :goto_1
    shl-int/lit8 v5, v3, 0x1e

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    shl-int/lit8 v6, v1, 0x1e

    .line 332
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 331
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    aput v5, v0, v2

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x1

    aput v5, v0, v6

    .line 338
    aget v5, v0, v2

    if-nez v5, :cond_2

    if-ge v3, v4, :cond_2

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 341
    :cond_2
    const/4 v3, 0x4

    .line 344
    :goto_2
    aget v5, v0, v6

    if-nez v5, :cond_3

    if-ge v1, v4, :cond_3

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_3
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public static getXY(Landroid/view/View;)[I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 309
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 310
    .local v0, "locations":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 311
    return-object v0
.end method

.method public static rootViewToViewTreeBean(Landroid/view/View;)Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    .locals 7
    .param p0, "parentView"    # Landroid/view/View;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "viewTreeBeanArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/soullistener/viewtransfer/model/ViewTreeBean;>;"
    invoke-static {p0}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->viewTransBean(Landroid/view/View;)Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    move-result-object v1

    .line 43
    .local v1, "viewSaveBean":Lcom/soullistener/viewtransfer/model/ViewSaveBean;
    new-instance v2, Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    invoke-direct {v2}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;-><init>()V

    .line 44
    .local v2, "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    invoke-virtual {v2, v1}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->setViewSaveBean(Lcom/soullistener/viewtransfer/model/ViewSaveBean;)V

    .line 46
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 49
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    .line 50
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 51
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 54
    .local v5, "childView":Landroid/view/View;
    invoke-static {v5}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->rootViewToViewTreeBean(Landroid/view/View;)Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    move-result-object v6

    .line 55
    .local v6, "childViewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v5    # "childView":Landroid/view/View;
    .end local v6    # "childViewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v2, v0}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->setViewTreeBeans(Ljava/util/ArrayList;)V

    .line 61
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return-object v2
.end method

.method public static viewTransBean(Landroid/view/View;)Lcom/soullistener/viewtransfer/model/ViewSaveBean;
    .locals 16
    .param p0, "childView"    # Landroid/view/View;

    .line 72
    move-object/from16 v0, p0

    const-string v1, ""

    .line 73
    .local v1, "content":Ljava/lang/String;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "name":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->getWH(Landroid/view/View;)[I

    move-result-object v3

    .line 85
    .local v3, "pxwh":[I
    const/4 v4, 0x0

    aget v5, v3, v4

    .line 86
    .local v5, "pxWidth":I
    const/4 v6, 0x1

    aget v7, v3, v6

    .line 89
    .local v7, "pxHeight":I
    invoke-static/range {p0 .. p0}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->getXY(Landroid/view/View;)[I

    move-result-object v8

    .line 90
    .local v8, "locations":[I
    aget v9, v8, v4

    .line 91
    .local v9, "x":I
    aget v6, v8, v6

    .line 93
    .local v6, "y":I
    int-to-float v10, v5

    invoke-static {v10}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->px2dp(F)I

    move-result v10

    .line 94
    .local v10, "dpWidth":I
    int-to-float v11, v7

    invoke-static {v11}, Lcom/soullistener/viewtransfer/utils/ViewUnitConventUtils;->px2dp(F)I

    move-result v11

    .line 96
    .local v11, "dpHeight":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "view---->>>>>bean"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v12, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v4, -0x1

    .line 99
    .local v4, "backColor":I
    const-string v12, ""

    .line 101
    .local v12, "backImage":Ljava/lang/String;
    new-instance v13, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;

    invoke-direct {v13, v9, v6, v10, v11}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;-><init>(IIII)V

    .line 102
    .local v13, "viewInfo":Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;
    new-instance v14, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;

    invoke-direct {v14, v2, v1}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v14, "viewContent":Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;
    new-instance v15, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;

    invoke-direct {v15, v4, v12}, Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;-><init>(ILjava/lang/String;)V

    .line 104
    .local v15, "viewResource":Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;
    new-instance v0, Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    invoke-direct {v0, v14, v15, v13}, Lcom/soullistener/viewtransfer/model/ViewSaveBean;-><init>(Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewContent;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewResource;Lcom/soullistener/viewtransfer/model/ViewSaveBean$ViewInfo;)V

    .line 105
    .local v0, "viewSaveBean":Lcom/soullistener/viewtransfer/model/ViewSaveBean;
    return-object v0
.end method

.method public static viewTransfer(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 180
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 181
    .local v0, "viewClazz":Ljava/lang/Class;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 182
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 191
    .end local v0    # "viewClazz":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 187
    :catch_2
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 185
    :catch_3
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 183
    :catch_4
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 195
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static viewTreeBeanAdded(Landroid/view/ViewGroup;Lcom/soullistener/viewtransfer/model/ViewTreeBean;)Landroid/view/View;
    .locals 6
    .param p0, "parentView"    # Landroid/view/ViewGroup;
    .param p1, "viewTreeBeans"    # Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    .line 205
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->getViewSaveBean()Lcom/soullistener/viewtransfer/model/ViewSaveBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->beanTransView(Landroid/content/Context;Lcom/soullistener/viewtransfer/model/ViewSaveBean;)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 210
    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 211
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/soullistener/viewtransfer/model/ViewTreeBean;->getViewTreeBeans()Ljava/util/ArrayList;

    move-result-object v2

    .line 217
    .local v2, "childTreeBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/soullistener/viewtransfer/model/ViewTreeBean;>;"
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/soullistener/viewtransfer/model/ViewTreeBean;

    .line 221
    .local v4, "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Lcom/soullistener/viewtransfer/utils/ViewTransUtils;->viewTreeBeanAdded(Landroid/view/ViewGroup;Lcom/soullistener/viewtransfer/model/ViewTreeBean;)Landroid/view/View;

    .line 222
    .end local v4    # "viewTreeBean":Lcom/soullistener/viewtransfer/model/ViewTreeBean;
    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 227
    return-object p0
.end method
