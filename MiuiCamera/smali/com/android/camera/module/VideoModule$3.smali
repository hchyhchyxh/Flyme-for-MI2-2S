.class Lcom/android/camera/module/VideoModule$3;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;

.field final synthetic val$extra1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, Lcom/android/camera/module/VideoModule$3;->val$extra1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->val$extra1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/camera/module/VideoModule;->switchToOtherMode(I)Z
    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->access$2200(Lcom/android/camera/module/VideoModule;I)Z

    .line 1218
    return-void
.end method