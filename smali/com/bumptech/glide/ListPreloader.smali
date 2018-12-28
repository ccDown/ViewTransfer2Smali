.class public Lcom/bumptech/glide/ListPreloader;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/ListPreloader$PreloadTarget;,
        Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;,
        Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;,
        Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private isIncreasing:Z

.field private lastEnd:I

.field private lastFirstVisible:I

.field private lastStart:I

.field private final maxPreload:I

.field private final preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field private totalItemCount:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;I)V
    .locals 2
    .param p1, "requestManager"    # Lcom/bumptech/glide/RequestManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "maxPreload"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestManager;",
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;",
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;I)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    .local p2, "preloadModelProvider":Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;, "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<TT;>;"
    .local p3, "preloadDimensionProvider":Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;, "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 125
    iput-object p1, p0, Lcom/bumptech/glide/ListPreloader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 126
    iput-object p2, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 127
    iput-object p3, p0, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 128
    iput p4, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    .line 129
    new-instance v0, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    add-int/lit8 v1, p4, 0x1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    .line 130
    return-void
.end method

.method private cancelAll()V
    .locals 4

    .line 219
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    if-ge v1, v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/ListPreloader;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v3, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    invoke-virtual {v3, v0, v0}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private preload(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 160
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    if-ge p1, p2, :cond_0

    .line 161
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 162
    .local v0, "start":I
    move v1, p2

    goto :goto_0

    .line 164
    .end local v0    # "start":I
    :cond_0
    move v0, p2

    .line 165
    .restart local v0    # "start":I
    iget v1, p0, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 167
    .local v1, "end":I
    :goto_0
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 168
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    if-ge p1, p2, :cond_1

    .line 172
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 173
    iget-object v3, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-lt v2, v0, :cond_2

    .line 178
    iget-object v4, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {v4, v2}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    .line 177
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 182
    .end local v2    # "i":I
    :cond_2
    iput v0, p0, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    .line 183
    iput v1, p0, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    .line 184
    return-void
.end method

.method private preload(IZ)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "increasing"    # Z

    .line 150
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    if-eq v0, p2, :cond_0

    .line 151
    iput-boolean p2, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/ListPreloader;->cancelAll()V

    .line 154
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/ListPreloader;->preload(II)V

    .line 155
    return-void
.end method

.method private preloadAdapterPosition(Ljava/util/List;IZ)V
    .locals 3
    .param p2, "position"    # I
    .param p3, "isIncreasing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    .local v0, "numItems":I
    if-eqz p3, :cond_0

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2, v1}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2, v1}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    .line 193
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 197
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private preloadItem(Ljava/lang/Object;II)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "perItemPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 205
    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;->getPreloadSize(Ljava/lang/Object;II)[I

    move-result-object v0

    .line 206
    .local v0, "dimensions":[I
    if-nez v0, :cond_1

    .line 207
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 210
    invoke-interface {v1, p1}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 211
    .local v1, "preloadRequestBuilder":Lcom/bumptech/glide/RequestBuilder;, "Lcom/bumptech/glide/RequestBuilder<Ljava/lang/Object;>;"
    if-nez v1, :cond_2

    .line 212
    return-void

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 216
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .line 140
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    iput p4, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    .line 141
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    if-le p2, v0, :cond_0

    .line 142
    add-int v0, p2, p3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    goto :goto_0

    .line 143
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    if-ge p2, v0, :cond_1

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    .line 146
    :cond_1
    :goto_0
    iput p2, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    .line 147
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 135
    .local p0, "this":Lcom/bumptech/glide/ListPreloader;, "Lcom/bumptech/glide/ListPreloader<TT;>;"
    return-void
.end method
