.class Lcom/android/settings_ext/wifi/openwifi/b;
.super Ljava/lang/Object;
.source "FreeWifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ayg:Lcom/android/settings_ext/wifi/openwifi/FreeWifiDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/openwifi/FreeWifiDialog;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_ext/wifi/openwifi/b;->ayg:Lcom/android/settings_ext/wifi/openwifi/FreeWifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/b;->ayg:Lcom/android/settings_ext/wifi/openwifi/FreeWifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiDialog;->finish()V

    .line 57
    return-void
.end method