.class Lcom/android/settings_ext/wifi/aL;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axl:Lcom/android/settings_ext/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x2e

    .line 178
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/WifiStatusTest;->c(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/WifiStatusTest;->c(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ext/wifi/WifiStatusTest;->c(Lcom/android/settings_ext/wifi/WifiStatusTest;I)V

    .line 181
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->d(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->e(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 184
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v4, v1, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v4, v1, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 190
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->f(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->g(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->h(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->i(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->j(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/WifiStatusTest;->k(Lcom/android/settings_ext/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/settings_ext/wifi/aL;->axl:Lcom/android/settings_ext/wifi/WifiStatusTest;

    invoke-static {v1, v0}, Lcom/android/settings_ext/wifi/WifiStatusTest;->a(Lcom/android/settings_ext/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V

    .line 199
    return-void
.end method