.class public final Lio/reactivex/internal/operators/single/SingleMap;
.super Lio/reactivex/Single;
.source "SingleMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleMap;, "Lio/reactivex/internal/operators/single/SingleMap<TT;TR;>;"
    .local p1, "source":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleMap;->source:Lio/reactivex/SingleSource;

    .line 29
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleMap;->mapper:Lio/reactivex/functions/Function;

    .line 30
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleMap;, "Lio/reactivex/internal/operators/single/SingleMap<TT;TR;>;"
    .local p1, "t":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleMap;->source:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleMap;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 35
    return-void
.end method
