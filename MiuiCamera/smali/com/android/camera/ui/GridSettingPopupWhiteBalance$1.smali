.class Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;
.super Ljava/lang/Object;
.source "GridSettingPopupWhiteBalance.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    # getter for: Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$000(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/WheelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-virtual {v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->reloadPreference()V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    # getter for: Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$000(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/WheelView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    iget-object v0, v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 132
    :cond_0
    return-void
.end method