.class public final Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;
.super Lio/reactivex/Single;
.source "MaybeIsEmptySingle.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/HasUpstreamMaybeSource;
.implements Lio/reactivex/internal/fuseable/FuseToMaybe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/internal/fuseable/HasUpstreamMaybeSource<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/FuseToMaybe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle<TT;>;"
    .local p1, "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    .line 35
    return-void
.end method


# virtual methods
.method public fuseToMaybe()Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;-><init>(Lio/reactivex/MaybeSource;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public source()Lio/reactivex/MaybeSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/MaybeSource<",
            "TT;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle<TT;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle;->source:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver;-><init>(Lio/reactivex/SingleObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 50
    return-void
.end method
