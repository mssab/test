package com.example.mssab.gojamesandroid;

import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageSwitcher;
import android.widget.ImageView;
import android.widget.ViewSwitcher;

public class PhotoView extends AppCompatActivity {
    ImageSwitcher sw;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_photo_view);
        sw=(ImageSwitcher)findViewById(R.id.imageSwitcher);
        sw.setFactory(new ViewSwitcher.ViewFactory() {
            @Override
            public View makeView() {
                ImageView myimageview = new ImageView(getApplicationContext());
                myimageview.setScaleType(ImageView.ScaleType.FIT_CENTER);
                myimageview.setLayoutParams(new ImageSwitcher.LayoutParams(ActionBar.LayoutParams.WRAP_CONTENT,ActionBar.LayoutParams.WRAP_CONTENT));


                return myimageview;
            }
        });
        Animation lf = AnimationUtils.loadAnimation(this,android.R.anim.slide_in_left);
        Animation rt = AnimationUtils.loadAnimation(this,android.R.anim.slide_out_right);
        sw.setInAnimation(lf);
        sw.setOutAnimation(rt);
    }

    public void buNext(View view) {
        sw.setImageResource(R.drawable.dw);

    }

    public void buPrev(View view) {
        sw.setImageResource(R.drawable.dw);
    }
}
