package com.graduation.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Gallery;

public class ViewGallery extends Gallery {
	public ViewGallery(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
	}
	

	public ViewGallery(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		//����false ���Gallery��ק��������
		return false;
	}

	@Override
	public void setUnselectedAlpha(float unselectedAlpha) {
		// TODO Auto-generated method stub
		unselectedAlpha = 1.0f;
		super.setUnselectedAlpha(unselectedAlpha);
	} 
}
