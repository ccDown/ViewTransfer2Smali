.class public final Lio/reactivex/internal/operators/completable/CompletableFromObservable;
.super Lio/reactivex/Completable;
.source "CompletableFromObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableFromObservable$CompletableFromObservableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;"
    }
.end annotation


# instance fields
.field final observable:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromObservable;, "Lio/reactivex/internal/operators/completable/CompletableFromObservable<TT;>;"
    .local p1, "observable":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 24
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableFromObservable;->observable:Lio/reactivex/ObservableSource;

    .line 25
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 29
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromObservable;, "Lio/reactivex/internal/operators/completable/CompletableFromObservable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromObservable;->observable:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableFromObservable$CompletableFromObservableObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/completable/CompletableFromObservable$CompletableFromObservableObserver;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 30
    return-void
.end method
