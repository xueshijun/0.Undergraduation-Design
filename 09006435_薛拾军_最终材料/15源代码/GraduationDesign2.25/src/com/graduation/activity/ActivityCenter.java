package com.graduation.activity;

import java.util.ArrayList;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.Display;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

import com.graduation.R;

@SuppressLint("NewApi")
public class ActivityCenter extends ActivityGroup {

	public static ActivityCenter instance = null;

	public final static int TAB_HOME = 0;
	public final static int TAB_CAR = 1;
	public final static int TAB_LOCATION = 2;
	public final static int TAB_SETTING = 3;

	private ViewPager mTabPager;
	private ImageView mTabImg;// 动画图片
	private ImageView[] mTab;;
	private int mImageOffSet = 0;// 动画图片偏移量
	private int mCurrPageIndex = 0;// 当前页卡编号
	private int mHorizonalOfSet_Factor;// 单个水平动画位移
	private LinearLayout mClose;
	private LinearLayout mCloseBtn;
	private View layout;
	private boolean menu_display = false;
	private PopupWindow menuWindow;
	private LayoutInflater inflater;
	private Button mRightBtn;
	LocalActivityManager mLocalActivityManager;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_center_tab);

		mLocalActivityManager = new LocalActivityManager(this, false);
		mLocalActivityManager.dispatchCreate(savedInstanceState);

		// 启动activity时不自动弹出软键盘
		getWindow().setSoftInputMode(
				WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
		instance = this;
		mTab = new ImageView[4];
		// mRightBtn = (Button) findViewById(R.id.right_btn);
		// mRightBtn.setOnClickListener(new Button.OnClickListener(){
		// @Override
		// public void onClick(View v){
		// showPopupWindow (ActivityCenterHome.this,mRightBtn);
		// }
		// });

		mTabPager = (ViewPager) findViewById(R.id.tabpager);
		mTabPager.setOnPageChangeListener(new CenterPageChangeListener());

		mTab[0] = (ImageView) findViewById(R.id.img_home);
		mTab[1] = (ImageView) findViewById(R.id.img_car);
		mTab[2] = (ImageView) findViewById(R.id.img_location);
		mTab[3] = (ImageView) findViewById(R.id.img_setting);

		mTabImg = (ImageView) findViewById(R.id.img_tab_now);

		mTab[0].setOnClickListener(new CenterOnClickListener(0));
		mTab[1].setOnClickListener(new CenterOnClickListener(1));
		mTab[2].setOnClickListener(new CenterOnClickListener(2));
		mTab[3].setOnClickListener(new CenterOnClickListener(3));

		Display currDisplay = getWindowManager().getDefaultDisplay();// 获取屏幕当前分辨率
		int displayWidth = currDisplay.getWidth();
		int displayHeight = currDisplay.getHeight();
		mHorizonalOfSet_Factor = displayWidth / 4; // 设置水平动画平移大小

		Intent intent = new Intent();
		LayoutInflater mInflater = LayoutInflater.from(this);
		View[] view = new View[4];
		intent.setClass(ActivityCenter.this, ActivityCenterHome.class);
		view[0] = activityToView(intent, "0");
		intent.setClass(ActivityCenter.this, ActivityCenterCar.class);
		view[1] = activityToView(intent, "1");
		intent.setClass(ActivityCenter.this, ActivityCenterLocation.class);
		view[2] = activityToView(intent, "2");
		// view[2] = mInflater.inflate(R.layout.activity_center_tab_location,
		// null);
		 intent.setClass(ActivityCenter.this, ActivityCenterSetting.class);
		 view[3] = activityToView(intent, "3");
//		view[3] = mInflater.inflate(R.layout.activity_center_tab_setting, null);

		final ArrayList<View> list_View = new ArrayList<View>();
		for (View mView : view) {
			list_View.add(mView);
		}

		PagerAdapter mPagerAdapter = new PagerAdapter() {
			@Override
			public boolean isViewFromObject(View mView, Object mOView) {
				return mView == mOView;
			}

			@Override
			public int getCount() {
				return list_View.size();
			}

			@Override
			public void destroyItem(View container, int position, Object object) {
				((ViewPager) container).removeView(list_View.get(position));
			}

			// @Override
			// public CharSequence getPageTitle(int position) {
			// return titles.get(position);
			// }

			@Override
			public Object instantiateItem(View container, int position) {
				((ViewPager) container).addView(list_View.get(position));
				return list_View.get(position);
			}
		};

		mTabPager.setAdapter(mPagerAdapter);
	}

	public class CenterOnClickListener implements View.OnClickListener {
		private int index = 0;

		public CenterOnClickListener(int id) {
			index = id;
		}

		@Override
		public void onClick(View v) {
			mTabPager.setCurrentItem(index);
		}
	};

	public class CenterPageChangeListener implements OnPageChangeListener {
		@Override
		public void onPageSelected(int id) {
			Animation animation = null;
			switch (id) {
			case TAB_HOME:
				setImage(mTab[0], R.drawable.tab_center_menu_home_pressed);
				switch (mCurrPageIndex) {
				case 1:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 1, 0, 0, 0);
					setImage(mTab[1], R.drawable.tab_center_menu_cart_normal);
					break;
				case 2:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 2, 0, 0, 0);
					setImage(mTab[2],
							R.drawable.tab_center_menu_location_normal);
					break;
				case 3:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 3, 0, 0, 0);
					setImage(mTab[3], R.drawable.tab_center_menu_setting_normal);

					break;
				}
				break;
			case TAB_CAR:
				setImage(mTab[1], R.drawable.tab_center_menu_cart_pressed);
				switch (mCurrPageIndex) {
				case 0:
					animation = new TranslateAnimation(0,
							mHorizonalOfSet_Factor, 0, 0);
					setImage(mTab[0], R.drawable.tab_center_menu_home_normal);
					break;
				case 2:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 2, mHorizonalOfSet_Factor,
							0, 0);
					setImage(mTab[2],
							R.drawable.tab_center_menu_location_normal);
					break;
				case 3:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 3, mHorizonalOfSet_Factor,
							0, 0);
					setImage(mTab[3], R.drawable.tab_center_menu_setting_normal);
					break;
				}
				break;
			case TAB_LOCATION:
				setImage(mTab[2], R.drawable.tab_center_menu_location_pressed);
				switch (mCurrPageIndex) {
				case 0:
					animation = new TranslateAnimation(0,
							mHorizonalOfSet_Factor * 2, 0, 0);
					setImage(mTab[0], R.drawable.tab_center_menu_home_normal);
					break;
				case 1:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 1,
							mHorizonalOfSet_Factor * 2, 0, 0);
					setImage(mTab[1], R.drawable.tab_center_menu_cart_normal);
					break;
				case 3:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 3,
							mHorizonalOfSet_Factor * 2, 0, 0);
					setImage(mTab[3], R.drawable.tab_center_menu_setting_normal);
					break;
				}
				break;
			case TAB_SETTING:
				setImage(mTab[3], R.drawable.tab_center_menu_setting_pressed);
				switch (mCurrPageIndex) {
				case 0:
					animation = new TranslateAnimation(0,
							mHorizonalOfSet_Factor * 3, 0, 0);
					setImage(mTab[0], R.drawable.tab_center_menu_home_normal);
					break;
				case 1:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 1,
							mHorizonalOfSet_Factor * 3, 0, 0);
					setImage(mTab[1], R.drawable.tab_center_menu_cart_normal);
					break;
				case 2:
					animation = new TranslateAnimation(
							mHorizonalOfSet_Factor * 2,
							mHorizonalOfSet_Factor * 3, 0, 0);
					setImage(mTab[2],
							R.drawable.tab_center_menu_location_normal);
					break;
				}
				break;
			}
			mCurrPageIndex = id;
			animation.setFillAfter(true);
			animation.setDuration(150);
			mTabImg.startAnimation(animation);
		}

		@Override
		public void onPageScrolled(int arg0, float arg1, int arg2) {
		}

		@Override
		public void onPageScrollStateChanged(int arg0) {
		}
	}

	//
	public void setImage(ImageView imageView, int resource) {
		imageView.setImageDrawable(getResources().getDrawable(resource));
	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {// 获取back键
			if (menu_display == true) {// 如果退出界面已存在，界面消失
				menuWindow.dismiss();
				menu_display = false;
			} else {
				Intent intent = new Intent();
				intent.setClass(ActivityCenter.this, ActivityExit.class);
				startActivity(intent);
			}
		} else if (keyCode == KeyEvent.KEYCODE_MENU) {// 菜单键
			if (menu_display == false) {
				// 点菜单键 ，弹出popupwindow(退出)
				inflater = LayoutInflater.from(this);
				layout = inflater.inflate(R.layout.activity_center_menu, null);
				// 添加布局
				menuWindow = new PopupWindow(layout, LayoutParams.FILL_PARENT,
						LayoutParams.WRAP_CONTENT);
				// 设置布局在popupwindow中的位置
				menuWindow.showAtLocation(layout, Gravity.BOTTOM
						| Gravity.CENTER_HORIZONTAL, 0, 0);
				mClose = (LinearLayout) layout.findViewById(R.id.menu_close);
				mCloseBtn = (LinearLayout) layout
						.findViewById(R.id.menu_close_btn);
				mCloseBtn.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						Intent intent = new Intent();
						intent.setClass(ActivityCenter.this, ActivityExit.class);
						startActivity(intent);
						menuWindow.dismiss();
					}
				});
				menu_display = true;
			} else {
				menuWindow.dismiss();
				menu_display = false;
			}
			return false;
		}
		return false;
	}

	// //设置标题栏右侧按钮的作用
	// public void btnmainright(View v) {
	// Intent intent = new Intent
	// (ActivityCenterHome.this,ActivityCenterHome.class);
	// startActivity(intent);
	// //Toast.makeText(getApplicationContext(), "点击了功能按钮",
	// Toast.LENGTH_LONG).show();
	// }
	// public void startchat(View v) { //小黑 对话界面
	// Intent intent = new Intent
	// (ActivityCenterHome.this,ActivityCenterCar.class);
	// startActivity(intent);
	// //Toast.makeText(getApplicationContext(), "登录成功",
	// Toast.LENGTH_LONG).show();
	// }
	// public void exit_settings(View v) { //退出 伪“对话框”，其实是一个activity
	// Intent intent = new Intent
	// (ActivityCenterHome.this,ActivityCenterLocation.class);
	// startActivity(intent);
	// }
	// public void btn_shake(View v) { //手机摇一摇
	// Intent intent = new Intent
	// (ActivityCenterHome.this,ActivityCenterSetting.class);
	// startActivity(intent);
	// }

	/** ----------------------LOCATION---------------------- */

	// public View activityToView(Context parent,Intent intent){
	//
	// LocalActivityManager mLocalActivityManager = new
	// LocalActivityManager((Activity) parent,true);
	//
	// final Window w = mLocalActivityManager.startActivity(
	// "TagName", intent);
	// final View wd = w != null ? w.getDecorView() : null;
	// if (wd != null) {
	// wd .setVisibility(View.VISIBLE);
	// wd .setFocusableInTouchMode(true);
	// // ((ViewGroup) wd ).setDescendantFocusability( FOCUS_AFTER_DESCENDANTS);
	// }
	// return wd ;
	// }

	public View activityToView(Context parent, Intent intent) {
		LocalActivityManager mLocalActivityManager = new LocalActivityManager(
				(Activity) parent, true);
		final Window w = mLocalActivityManager.startActivity("TagName", intent);
		final View view = w != null ? w.getDecorView() : null;
		if (view != null) {
			view.setVisibility(View.VISIBLE);
			view.setFocusableInTouchMode(true);
			// ((ViewGroup) view ).setDescendantFocusability(
			// FOCUS_AFTER_DESCENDANTS);
		}
		return view;
	}

	public View activityToView(Intent intent, String tag) {
		// android ActivityGroup管理activity，activity转换成view
		tag = tag == null || tag.equals("") ? "tag" : tag;
		Window subActivity = getLocalActivityManager().startActivity(tag,
				intent);
		View view = subActivity.getDecorView();
		view.dispatchWindowFocusChanged(true);
		((ViewGroup) view)
				.setDescendantFocusability(ViewGroup.FOCUS_AFTER_DESCENDANTS);
		return view;
	}

	@Override
	protected void onPause() {
		super.onPause();
		mLocalActivityManager.dispatchResume();
	}

	@Override
	protected void onResume() {
		super.onResume();
		mLocalActivityManager.dispatchPause(isFinishing());
	}
}