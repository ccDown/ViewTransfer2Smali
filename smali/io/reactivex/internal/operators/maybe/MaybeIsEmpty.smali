.class public final Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "MaybeIsEmpty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeIsEmpty$IsEmptyMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


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

    .line 29
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmpty<TT;>;"
    .local p1, "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/MaybeSource;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;, "Lio/reactivex/internal/operators/maybe/MaybeIsEmpty<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeIsEmpty;->source:Lio/reactivex/MaybeSource;

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeIsEmpty$IsEmptyMaybeObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/MaybeIsEmpty$IsEmptyMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 35
    return-void
.end method
