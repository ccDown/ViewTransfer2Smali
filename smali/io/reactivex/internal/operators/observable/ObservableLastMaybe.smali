.class public final Lio/reactivex/internal/operators/observable/ObservableLastMaybe;
.super Lio/reactivex/Maybe;
.source "ObservableLastMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/ObservableSource;
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

    .line 30
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe;->source:Lio/reactivex/ObservableSource;

    .line 32
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableLastMaybe;, "Lio/reactivex/internal/operators/observable/ObservableLastMaybe<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastMaybe;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 39
    return-void
.end method
