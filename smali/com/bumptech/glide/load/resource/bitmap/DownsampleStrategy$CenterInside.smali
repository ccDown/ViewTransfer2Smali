.class Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterInside"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 1
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I

    .line 248
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object v0
.end method

.method public getScaleFactor(IIII)F
    .locals 2
    .param p1, "sourceWidth"    # I
    .param p2, "sourceHeight"    # I
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I

    .line 241
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 242
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v0

    .line 241
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
