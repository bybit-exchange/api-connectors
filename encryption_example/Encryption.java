import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;

public class Encryption {
    public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeyException {
        TreeMap map = new TreeMap<String, String>(
                new Comparator<String>() {
                    public int compare(String obj1, String obj2) {
                        //sort in alphabet order
                        return obj1.compareTo(obj2);
                    }
                });
        map.put("symbol", "ETHUSD");
        map.put("base_price", "259");
        map.put("order_type", "Market");
        map.put("qty", "2000");
        map.put("side", "Sell");
        map.put("trigger_by", "MarkPrice");
        map.put("stop_px", "259");
        map.put("time_in_force", "GoodTillCancel");
        map.put("timestamp", "1582344204");

        String apiKey = "";
        String secret = "";
        map.put("api_key", apiKey);

        String signature = getSignature(map, secret);
        System.out.println(signature);
    }

    /**
     *
     * @param params
     *        Map<String, String> params = new TreeMap<String, String>(
     *                 new Comparator<String>() {
     *                     public int compare(String obj1, String obj2) {
     *                         //sort in alphabet order
     *                         return obj1.compareTo(obj2);
     *                     }
     *                 });
     * @param secret
     * @return
     */
    private static String getSignature(TreeMap<String, String> params, String secret) throws NoSuchAlgorithmException, InvalidKeyException {
        Set<String> keySet = params.keySet();
        Iterator<String> iter = keySet.iterator();
        StringBuilder sb = new StringBuilder();
        while (iter.hasNext()) {
            String key = iter.next();
            sb.append(key + "=" + params.get(key));
            sb.append("&");
        }
        sb.deleteCharAt(sb.length() - 1);
//        System.out.println(sb.toString());
        Mac sha256_HMAC = Mac.getInstance("HmacSHA256");
        SecretKeySpec secret_key = new SecretKeySpec(secret.getBytes(), "HmacSHA256");
        sha256_HMAC.init(secret_key);

        return bytesToHex(sha256_HMAC.doFinal(sb.toString().getBytes()));
    }



    private static String bytesToHex(byte[] hash) {
        StringBuffer hexString = new StringBuffer();
        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if(hex.length() == 1) hexString.append('0');
            hexString.append(hex);
        }
        return hexString.toString();
    }
}
