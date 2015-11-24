.class public Lcom/android/settings_ext/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private fw:Landroid/widget/TabHost;

.field private mUserManager:Landroid/os/UserManager;

.field private final yC:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->yC:Landroid/util/SparseArray;

    .line 722
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/gU;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/settings_ext/gU;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 581
    if-nez p3, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 583
    const v1, 0x7f040114

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 584
    new-instance v1, Lcom/android/settings_ext/gY;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/settings_ext/gY;-><init>(Lcom/android/settings_ext/gJ;)V

    .line 585
    const v0, 0x7f1002a6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/settings_ext/gY;->a(Lcom/android/settings_ext/gY;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 587
    const v0, 0x7f1002a7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/settings_ext/gY;->b(Lcom/android/settings_ext/gY;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 589
    const v0, 0x7f1002a8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v1, v0}, Lcom/android/settings_ext/gY;->a(Lcom/android/settings_ext/gY;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 591
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 595
    :goto_0
    invoke-static {v0}, Lcom/android/settings_ext/gY;->a(Lcom/android/settings_ext/gY;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings_ext/gU;->g(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    invoke-static {v0}, Lcom/android/settings_ext/gY;->b(Lcom/android/settings_ext/gY;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings_ext/gU;->h(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-static {p2}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->h(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-static {v0}, Lcom/android/settings_ext/gY;->c(Lcom/android/settings_ext/gY;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-static {p1}, Lcom/android/settings_ext/gU;->d(Lcom/android/settings_ext/gU;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 599
    invoke-static {v0}, Lcom/android/settings_ext/gY;->c(Lcom/android/settings_ext/gY;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 601
    :cond_0
    return-object p3

    .line 593
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gY;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 598
    goto :goto_1
.end method

.method private a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->b(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->d(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->c(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->e(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 210
    new-instance v1, Lcom/android/settings_ext/gX;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/settings_ext/gX;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gJ;)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 213
    new-instance v2, Lcom/android/settings_ext/gJ;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ext/gJ;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gX;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 232
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->f(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 223
    new-instance v1, Lcom/android/settings_ext/gV;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/settings_ext/gV;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gJ;)V

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    new-instance v2, Lcom/android/settings_ext/gK;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ext/gK;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gV;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/gU;)V

    return-void
.end method

.method private a(Lcom/android/settings_ext/gU;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 611
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 612
    const v0, 0x10405ba

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 614
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-direct {p0, p1, v4, v0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/gU;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 618
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v1, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 621
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 622
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 623
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 624
    new-instance v1, Lcom/android/settings_ext/gL;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_ext/gL;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 636
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 637
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 638
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, v2

    .line 639
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 640
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 641
    if-eqz v1, :cond_0

    .line 642
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 639
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 647
    const v0, 0x104000a

    new-instance v1, Lcom/android/settings_ext/gM;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/gM;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 654
    const v0, 0x102036a

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 655
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 656
    const v4, 0x7f040115

    invoke-virtual {v1, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 659
    iget-object v2, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_credentials"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 660
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 662
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ext/gU;->e(Lcom/android/settings_ext/gU;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gU;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 663
    new-instance v0, Lcom/android/settings_ext/gN;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/settings_ext/gN;-><init>(Lcom/android/settings_ext/TrustedCredentialsSettings;Lcom/android/settings_ext/gU;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 687
    return-void
.end method

.method private a(Lcom/android/settings_ext/gU;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    .line 692
    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->yC:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings_ext/gU;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    .line 696
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 697
    invoke-static {p1}, Lcom/android/settings_ext/gU;->i(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 698
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 699
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 700
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 701
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v0, v6}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 702
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 703
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    const-string v1, "TrustedCredentialsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings_ext/gU;->i(Lcom/android/settings_ext/gU;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    :cond_0
    return-void

    .line 710
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 711
    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private a(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 717
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->yC:Landroid/util/SparseArray;

    return-object v0
.end method

.method private hn()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->yC:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->yC:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->yC:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 200
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 172
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 177
    const v0, 0x7f040116

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    .line 178
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 179
    sget-object v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yR:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V

    .line 181
    sget-object v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yS:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yS:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    invoke-static {v1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->b(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings;->fw:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->hn()V

    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 192
    return-void
.end method