.class public final Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableOnErrorReturn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final valueSupplier:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "valueSupplier":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 26
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    .line 27
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;, "Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn<TT;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableOnErrorReturn$OnErrorReturnObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 32
    return-void
.end method
