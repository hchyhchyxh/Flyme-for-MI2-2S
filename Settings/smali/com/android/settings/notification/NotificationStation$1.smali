.class Lcom/android/settings/notification/NotificationStation$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$1;->this$0:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$1;->this$0:Lcom/android/settings/notification/NotificationStation;

    # invokes: Lcom/android/settings/notification/NotificationStation;->refreshList()V
    invoke-static {v0}, Lcom/android/settings/notification/NotificationStation;->access$000(Lcom/android/settings/notification/NotificationStation;)V

    .line 81
    return-void
.end method