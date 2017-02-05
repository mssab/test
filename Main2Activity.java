package com.example.mssab.gojamesandroid;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.nfc.Tag;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.v4.content.FileProvider;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

import com.kosalgeek.android.photoutil.GalleryPhoto;
import com.kosalgeek.android.photoutil.ImageLoader;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Main2Activity extends AppCompatActivity {
    CameraPhoto cameraPhoto;
    GalleryPhoto galleryPhoto;
    final int QALARY_REQUEST=23;
    private final String TAG= this.getClass().getName();
    private static final int REQUEST_IMADGE_CAPTURE = 1;
    final int CAMERA_REQUEST=2;
    ImageView imv1, imv2;
    Button button2;
    private int REQUEST_IMAGE_CAPTURE = 1;
    private int resultCode = 1;
    private int requestCode = 1;
    private Intent data;

    //private Animator mCurrentAnimator;
    //private int mShortAnimationDuration;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        imv1 = (ImageView) findViewById(R.id.imv1);
        imv2 = (ImageView) findViewById(R.id.imv2);
        cameraPhoto=new CameraPhoto(getApplicationContext());
        galleryPhoto= new GalleryPhoto(getApplicationContext());
        imv2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try {
                    startActivityForResult(cameraPhoto.takePhotoIntent(),CAMERA_REQUEST);
                    cameraPhoto.addToGallery();
                } catch (IOException e) {
                    Toast.makeText(getApplicationContext(),
                            "Some Thing wrong in camera",Toast.LENGTH_LONG).show();;
                }


            }
        });

        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivityForResult(galleryPhoto.openGalleryIntent(),QALARY_REQUEST);
            }
        });


    }

    public void capbtn(View view) {

        Intent iny = new Intent(this, PhotoView.class);
        startActivity(iny);
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        final Button v1 = (Button) findViewById(R.id.v1btn);
        if (requestCode == REQUEST_IMAGE_CAPTURE && resultCode == RESULT_OK) {

            Bundle extras = data.getExtras();
            Bitmap imageBitmap = (Bitmap) extras.get("data");

            imv1.setImageBitmap(imageBitmap);
            v1.setVisibility(View.VISIBLE);

        }
        ///

        if (requestCode == REQUEST_IMAGE_CAPTURE && resultCode == RESULT_OK) {


            String photoPath = cameraPhoto.getPhotoPath();
            try {
                Bitmap bitmap = ImageLoader.init().from(photoPath).requestSize(512,512).getBitmap();
                imv2.setImageBitmap(bitmap);
            } catch (FileNotFoundException e) {
                Toast.makeText(getApplicationContext(),
                        "Not Fund Photo",Toast.LENGTH_LONG).show();;
            }


            }
        else if(requestCode==QALARY_REQUEST)
        {
            String photoPath2= galleryPhoto.getPath();
            Uri uri =data.getData();
            galleryPhoto.setPhotoUri(uri);
            try {
                Bitmap bitmap = ImageLoader.init().from(photoPath2).requestSize(512,512).getBitmap();
                imv2.setImageBitmap(bitmap);
            } catch (FileNotFoundException e) {
                Toast.makeText(getApplicationContext(),
                        "Not Fund Photo",Toast.LENGTH_LONG).show();
            }

            //Log.d(TAG,photoPath);

            ///
        }
    }





    String mCurrentPhotoPath;

    private File createImageFile() throws IOException {
        // Create an image file name
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        String imageFileName = "JPEG_" + timeStamp + "_";
        File storageDir = getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        File image = File.createTempFile(
                imageFileName,  /* prefix */
                ".jpg",         /* suffix */
                storageDir      /* directory */
        );

        // Save a file: path for use with ACTION_VIEW intents
        mCurrentPhotoPath = image.getAbsolutePath();
        return image;
    }

    private void galleryAddPic() {
        Intent mediaScanIntent = new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE);
        File f = new File(mCurrentPhotoPath);
        Uri contentUri = Uri.fromFile(f);
        mediaScanIntent.setData(contentUri);
        this.sendBroadcast(mediaScanIntent);
    }

    static final int REQUEST_TAKE_PHOTO = 1;

    private void dispatchTakePictureIntent() {
        Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        // Ensure that there's a camera activity to handle the intent
        if (takePictureIntent.resolveActivity(getPackageManager()) != null) {
            // Create the File where the photo should go
            File photoFile = null;
            try {
                photoFile = createImageFile();
            } catch (IOException ex) {
                // Error occurred while creating the File

            }
            // Continue only if the File was successfully created
            if (photoFile != null) {
                Uri photoURI = FileProvider.getUriForFile(this,
                        "com.example.android.fileprovider",
                        photoFile);
                takePictureIntent.putExtra(MediaStore.EXTRA_OUTPUT, photoURI);
                startActivityForResult(takePictureIntent, REQUEST_TAKE_PHOTO);
            }
        }
    }

    public void imv1btn(View view) {
        Intent takePictureIntent1 = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);

        if (takePictureIntent1.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(takePictureIntent1, REQUEST_IMADGE_CAPTURE);

        }

    }


    public void imv2btn(View view) {

        Intent takePictureIntent1 = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);

        if (takePictureIntent1.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(takePictureIntent1, REQUEST_IMADGE_CAPTURE);

        }

    }

    public void vphoto(View view) {
        Intent inty = new Intent(this, PhotoView.class);
        startActivity(inty);

    }


}
