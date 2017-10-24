    public Bitmap getBitmapFromUrl(String src){
        try{
            URL url= new URL(src);
            HttpURLConnection conn =(HttpURLConnection) url.openConnection();
            conn.setDoInput(true);
            conn.connect();
            InputStream input= conn.getInputStream();
            Bitmap myBitmap=BitmapFactory.decodeStream(input);
            return myBitmap;

        }catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }