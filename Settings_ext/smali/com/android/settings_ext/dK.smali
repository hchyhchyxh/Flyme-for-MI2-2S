.class Lcom/android/settings_ext/dK;
.super Landroid/widget/ArrayAdapter;
.source "MiuiLocalePicker.java"


# instance fields
.field final synthetic qf:Lcom/android/settings_ext/MiuiLocalePicker;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/MiuiLocalePicker;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ext/dK;->qf:Lcom/android/settings_ext/MiuiLocalePicker;

    .line 89
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    const v0, 0x7f10011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/dK;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ext/dK;->qf:Lcom/android/settings_ext/MiuiLocalePicker;

    invoke-static {v3}, Lcom/android/settings_ext/MiuiLocalePicker;->a(Lcom/android/settings_ext/MiuiLocalePicker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    return-object v2
.end method