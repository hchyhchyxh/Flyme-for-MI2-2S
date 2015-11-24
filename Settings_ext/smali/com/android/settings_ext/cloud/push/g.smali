.class public Lcom/android/settings_ext/cloud/push/g;
.super Ljava/lang/Object;
.source "CompatChecker.java"


# static fields
.field public static QK:Lcom/android/settings_ext/cloud/push/g;


# instance fields
.field private QL:Landroid/app/ActivityManager;

.field private QM:Lcom/android/settings_ext/cloud/push/j;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/g;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 32
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->QL:Landroid/app/ActivityManager;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->QM:Lcom/android/settings_ext/cloud/push/j;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/cloud/push/g;)Lcom/android/settings_ext/cloud/push/j;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->QM:Lcom/android/settings_ext/cloud/push/j;

    return-object v0
.end method

.method public static aq(Landroid/content/Context;)Lcom/android/settings_ext/cloud/push/g;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings_ext/cloud/push/g;->QK:Lcom/android/settings_ext/cloud/push/g;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/settings_ext/cloud/push/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/cloud/push/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ext/cloud/push/g;->QK:Lcom/android/settings_ext/cloud/push/g;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/settings_ext/cloud/push/g;->QK:Lcom/android/settings_ext/cloud/push/g;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/cloud/push/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/cloud/push/j;)V
    .locals 5

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/j;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/j;->nG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/j;->nH()Ljava/util/Set;

    move-result-object v0

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/g;->QM:Lcom/android/settings_ext/cloud/push/j;

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/cloud/push/g;->aE(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/j;->nH()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 118
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v4, v0, :cond_3

    .line 121
    iput-object p1, p0, Lcom/android/settings_ext/cloud/push/g;->QM:Lcom/android/settings_ext/cloud/push/j;

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/cloud/push/g;->aE(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/android/settings_ext/cloud/push/l;)V
    .locals 5

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/l;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/l;->nG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/l;->nH()Ljava/util/Set;

    move-result-object v0

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->QL:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ext/cloud/push/l;->nH()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 156
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 158
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v4, v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->QL:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public aE(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 167
    new-instance v1, Lcom/android/settings_ext/cloud/push/i;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/cloud/push/i;-><init>(Lcom/android/settings_ext/cloud/push/g;Lcom/android/settings_ext/cloud/push/h;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ext/cloud/push/g;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 169
    monitor-enter v1

    .line 170
    :goto_0
    :try_start_0
    iget-boolean v0, v1, Lcom/android/settings_ext/cloud/push/i;->QN:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/cloud/push/j;

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/cloud/push/g;->a(Lcom/android/settings_ext/cloud/push/j;)V

    goto :goto_0
.end method

.method public m(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/cloud/push/l;

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/cloud/push/g;->a(Lcom/android/settings_ext/cloud/push/l;)V

    goto :goto_0
.end method