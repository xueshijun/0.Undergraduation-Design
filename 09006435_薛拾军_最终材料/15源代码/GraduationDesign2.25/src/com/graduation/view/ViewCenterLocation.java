package com.graduation.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;

import com.graduation.R;

public class ViewCenterLocation   extends View {
		
		Paint mPaint; //画笔,包含了画几何图形、文本等的样式和颜色信息
		public ViewCenterLocation(Context context) {
			super(context);
			
		}
		
		public ViewCenterLocation(Context context, AttributeSet attrs){
			super(context, attrs);
			mPaint = new Paint();
			//TypedArray是一个用来存放由context.obtainStyledAttributes获得的属性的数组
			//在使用完成后，一定要调用recycle方法
			//属性的名称是styleable中的名称+“_”+属性名称
//			TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.MyView);
//			int textColor = array.getColor(R.styleable.MyView_textColor, 0XFF00FF00); //提供默认值，放置未指定
//			float textSize = array.getDimension(R.styleable.MyView_textSize, 36);
//			mPaint.setColor(textColor);
//			mPaint.setTextSize(textSize);
			
//			array.recycle(); //一定要调用，否则这次的设定会对下次的使用造成影响
		}
		
		public void onDraw(Canvas canvas){
			super.onDraw(canvas);
			//Canvas中含有很多画图的接口，利用这些接口，我们可以画出我们想要的图形
			//mPaint = new Paint();
			//mPaint.setColor(Color.RED);
			mPaint.setStyle(Style.FILL); //设置填充
			canvas.drawRect(10, 10, 100, 100, mPaint); //绘制矩形
			
			mPaint.setColor(Color.BLUE);
			canvas.drawText("我是被画出来的", 10, 120, mPaint);
		}
		
	}
