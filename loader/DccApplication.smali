.class public LTechnoIndia/RK;
.super Landroid/app/Application;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const-string v0, "_Techno_India"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public native constructor <init>()V
.end method

.method public static final native initDcc()V
.end method
