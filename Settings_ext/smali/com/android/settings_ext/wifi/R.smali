.class Lcom/android/settings_ext/wifi/R;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# instance fields
.field final synthetic aul:Lcom/android/settings_ext/wifi/Q;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/Q;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ext/wifi/R;->aul:Lcom/android/settings_ext/wifi/Q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/settings_ext/wifi/R;->aul:Lcom/android/settings_ext/wifi/Q;

    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/Q;->a(Lcom/android/settings_ext/wifi/Q;I)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/wifi/R;->aul:Lcom/android/settings_ext/wifi/Q;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/Q;->a(Lcom/android/settings_ext/wifi/Q;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/wifi/R;->aul:Lcom/android/settings_ext/wifi/Q;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/Q;->b(Lcom/android/settings_ext/wifi/Q;I)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const-string v0, "availableArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    const-string v1, "activeArray"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 74
    const-string v2, "erroredArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/android/settings_ext/wifi/R;->aul:Lcom/android/settings_ext/wifi/Q;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/android/settings_ext/wifi/Q;->a(Lcom/android/settings_ext/wifi/Q;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/wifi/R;->aul:Lcom/android/settings_ext/wifi/Q;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/Q;->b(Lcom/android/settings_ext/wifi/Q;)V

    goto :goto_0
.end method