.class public Lcom/android/settings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    .line 67
    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 1
    .param p0, "userHandle"    # I

    .prologue
    .line 53
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method private buildUidDetail(I)Lcom/android/settings/net/UidDetail;
    .locals 22
    .param p1, "uid"    # I

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 106
    .local v15, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 108
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Lcom/android/settings/net/UidDetail;

    invoke-direct {v5}, Lcom/android/settings/net/UidDetail;-><init>()V

    .line 109
    .local v5, "detail":Lcom/android/settings/net/UidDetail;
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 135
    .local v16, "um":Landroid/os/UserManager;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/net/UidDetailProvider;->isKeyForUser(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/settings/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v17

    .line 137
    .local v17, "userHandle":I
    invoke-virtual/range {v16 .. v17}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 138
    .local v8, "info":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_2

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/android/settings/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8}, Lcom/android/settings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 192
    .end local v8    # "info":Landroid/content/pm/UserInfo;
    .end local v16    # "um":Landroid/os/UserManager;
    .end local v17    # "userHandle":I
    :cond_0
    :goto_0
    return-object v5

    .line 115
    :sswitch_0
    const v19, 0x7f090696

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 119
    :sswitch_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v19

    if-eqz v19, :cond_1

    const v19, 0x7f09082b

    :goto_1
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 119
    :cond_1
    const v19, 0x7f09082a

    goto :goto_1

    .line 125
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 127
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 146
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .restart local v16    # "um":Landroid/os/UserManager;
    :cond_2
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, "packageNames":[Ljava/lang/String;
    if-eqz v13, :cond_4

    array-length v10, v13

    .line 149
    .local v10, "length":I
    :goto_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 150
    .local v18, "userId":I
    new-instance v17, Landroid/os/UserHandle;

    invoke-direct/range {v17 .. v18}, Landroid/os/UserHandle;-><init>(I)V

    .line 151
    .local v17, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 152
    .local v9, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_5

    .line 153
    const/16 v19, 0x0

    aget-object v19, v13, v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-interface {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 155
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_3

    .line 156
    invoke-virtual {v8, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v8, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 181
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .end local v9    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v17    # "userHandle":Landroid/os/UserHandle;
    .end local v18    # "userId":I
    :goto_3
    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 189
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 147
    .end local v10    # "length":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 160
    .restart local v9    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "length":I
    .restart local v17    # "userHandle":Landroid/os/UserHandle;
    .restart local v18    # "userId":I
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v10, v0, :cond_3

    .line 161
    :try_start_1
    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 162
    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    .line 163
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v10, :cond_3

    .line 164
    aget-object v12, v13, v7

    .line 165
    .local v12, "packageName":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 166
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v9, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 169
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_6

    .line 170
    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual {v3, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v7

    .line 171
    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v20, v20, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v19, v7

    .line 173
    iget v0, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 174
    iget v0, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v19, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v12, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v3, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 182
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "i":I
    .end local v9    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "userHandle":Landroid/os/UserHandle;
    .end local v18    # "userId":I
    :catch_0
    move-exception v6

    .line 183
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "DataUsage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error while building UI detail for uid "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 184
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v6

    .line 185
    .local v6, "e":Landroid/os/RemoteException;
    const-string v19, "DataUsage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error while building UI detail for uid "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getUserIdForKey(I)I
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 61
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method public static isKeyForUser(I)Z
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 57
    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidDetail(IZ)Lcom/android/settings/net/UidDetail;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "blocking"    # Z

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetail;

    .line 83
    .local v0, "detail":Lcom/android/settings/net/UidDetail;
    monitor-exit v2

    .line 85
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 97
    :goto_0
    return-object v1

    .line 83
    .end local v0    # "detail":Lcom/android/settings/net/UidDetail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    .restart local v0    # "detail":Lcom/android/settings/net/UidDetail;
    :cond_0
    if-nez p2, :cond_1

    .line 88
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settings/net/UidDetail;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    monitor-exit v2

    move-object v1, v0

    .line 97
    goto :goto_0

    .line 95
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method