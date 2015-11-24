.class public Lcom/android/settings_ext/notification/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# instance fields
.field private afX:I

.field private afY:Landroid/preference/SeekBarVolumizer;

.field private afZ:Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;

.field private aga:Landroid/widget/ImageView;

.field private tP:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/VolumeSeekBarPreference;)Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afZ:Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/notification/VolumeSeekBarPreference;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afX:I

    return v0
.end method

.method private qQ()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afZ:Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;

    .line 68
    return-void
.end method

.method public cb(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afX:I

    .line 64
    return-void
.end method

.method public cc(I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->aga:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->aga:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afY:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afY:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 75
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 80
    iget v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afX:I

    if-nez v0, :cond_1

    .line 81
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 85
    const v0, 0x1020368

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 86
    iget-object v1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->tP:Landroid/widget/SeekBar;

    if-eq v0, v1, :cond_0

    .line 87
    iput-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->tP:Landroid/widget/SeekBar;

    .line 88
    new-instance v5, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings_ext/notification/VolumeSeekBarPreference;)V

    .line 96
    iget v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afX:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->qQ()Landroid/net/Uri;

    move-result-object v4

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afY:Landroid/preference/SeekBarVolumizer;

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$2;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afX:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$2;-><init>(Lcom/android/settings_ext/notification/VolumeSeekBarPreference;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afY:Landroid/preference/SeekBarVolumizer;

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afY:Landroid/preference/SeekBarVolumizer;

    iget-object v1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 109
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->aga:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afZ:Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afX:I

    iget-object v2, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;->k(II)V

    goto :goto_0

    .line 96
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afZ:Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->afX:I

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;->k(II)V

    .line 119
    return-void
.end method