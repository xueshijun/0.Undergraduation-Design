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
		
		Paint mPaint; //����,�����˻�����ͼ�Ρ��ı��ȵ���ʽ����ɫ��Ϣ
		public ViewCenterLocation(Context context) {
			super(context);
			
		}
		
		public ViewCenterLocation(Context context, AttributeSet attrs){
			super(context, attrs);
			mPaint = new Paint();
			//TypedArray��һ�����������context.obtainStyledAttributes��õ����Ե�����
			//��ʹ����ɺ�һ��Ҫ����recycle����
			//���Ե�������styleable�е�����+��_��+��������
//			TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.MyView);
//			int textColor = array.getColor(R.styleable.MyView_textColor, 0XFF00FF00); //�ṩĬ��ֵ������δָ��
//			float textSize = array.getDimension(R.styleable.MyView_textSize, 36);
//			mPaint.setColor(textColor);
//			mPaint.setTextSize(textSize);
			
//			array.recycle(); //һ��Ҫ���ã�������ε��趨����´ε�ʹ�����Ӱ��
		}
		
		public void onDraw(Canvas canvas){
			super.onDraw(canvas);
			//Canvas�к��кܶ໭ͼ�Ľӿڣ�������Щ�ӿڣ����ǿ��Ի���������Ҫ��ͼ��
			//mPaint = new Paint();
			//mPaint.setColor(Color.RED);
			mPaint.setStyle(Style.FILL); //�������
			canvas.drawRect(10, 10, 100, 100, mPaint); //���ƾ���
			
			mPaint.setColor(Color.BLUE);
			canvas.drawText("���Ǳ���������", 10, 120, mPaint);
		}
		
	}
