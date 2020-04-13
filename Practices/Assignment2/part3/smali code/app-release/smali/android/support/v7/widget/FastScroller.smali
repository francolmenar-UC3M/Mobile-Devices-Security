.class Landroid/support/v7/widget/FastScroller;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/FastScroller$AnimatorUpdater;,
        Landroid/support/v7/widget/FastScroller$AnimatorListener;,
        Landroid/support/v7/widget/FastScroller$AnimationState;,
        Landroid/support/v7/widget/FastScroller$DragState;,
        Landroid/support/v7/widget/FastScroller$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field private final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field private final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    new-instance v0, Landroid/support/v7/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$1;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$2;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    iput-object p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    iput p7, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    iput p8, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    iget-object p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/support/v7/widget/FastScroller$AnimatorListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Landroid/support/v7/widget/FastScroller$AnimatorListener;-><init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/FastScroller$1;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;

    invoke-direct {p3, p0, p4}, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;-><init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/FastScroller$1;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/FastScroller;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Landroid/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$302(Landroid/support/v7/widget/FastScroller;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/v7/widget/FastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/FastScroller;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private cancelHide()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v2

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    :goto_0
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_0
    int-to-float v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getHorizontalRange()[I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 8

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    return-void
.end method

.method private isLayoutRTL()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private requestRedraw()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method private resetHideDelay(I)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 2

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method private setState(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->resetHideDelay(I)V

    :cond_3
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    return-void
.end method

.method private setupCallbacks()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 8

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getVerticalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->destroyCallbacks()V

    :cond_1
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->setupCallbacks()V

    :cond_2
    return-void
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/FastScroller;->hide(I)V

    return-void
.end method

.method hide(I)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDragging()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isHidden()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isVisible()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    iget p2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean p2, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    :goto_1
    move v0, v2

    :cond_4
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 4

    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    if-eqz v2, :cond_2

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne p1, v1, :cond_6

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_8

    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne p1, v1, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne p1, v0, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->horizontalScrollTo(F)V

    :cond_7
    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne p1, v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->verticalScrollTo(F)V

    :cond_8
    return-void
.end method

.method public show()V
    .locals 5

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method updateScrollPosition(II)V
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int v6, v2, v5

    if-lez v6, :cond_1

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iput-boolean v6, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v6, :cond_3

    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz p1, :cond_2

    invoke-direct {p0, v3}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v7, v3, v6

    add-float/2addr p2, v7

    mul-float/2addr v3, p2

    int-to-float p2, v0

    div-float/2addr v3, p2

    float-to-int p2, v3

    iput p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    mul-int p2, v1, v1

    div-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    :cond_4
    iget-boolean p2, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_5

    int-to-float p1, p1

    int-to-float p2, v5

    div-float v0, p2, v6

    add-float/2addr p1, v0

    mul-float/2addr p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v5, v5

    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    :cond_5
    iget p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_7

    :cond_6
    invoke-direct {p0, v4}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    :cond_7
    return-void
.end method