.class Lcom/android/settings_ext/gC;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic yt:Lcom/android/settings_ext/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/TetherSettings;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings_ext/gC;->yt:Lcom/android/settings_ext/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/gC;->yt:Lcom/android/settings_ext/TetherSettings;

    invoke-static {v0}, Lcom/android/settings_ext/TetherSettings;->a(Lcom/android/settings_ext/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/gC;->yt:Lcom/android/settings_ext/TetherSettings;

    invoke-static {v0}, Lcom/android/settings_ext/TetherSettings;->a(Lcom/android/settings_ext/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 258
    return-void
.end method