Select Round(LONG_W,4) From STATION where LAT_N = (Select Max(LAT_N) From STATION where LAT_N<137.2345)
