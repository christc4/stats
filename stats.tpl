<p>Server has been up for

%  uptime | awk -F'( |,|:)+' '{print $6,$7",",$8,"hours,",$9,"minutes"}'

<p><b>Storage:</b>

<pre>
% storageused=`{df -h /dev/vda2 | awk 'NR==2 {gsub(/%/, "", $5); print $5}'}
<label for="disk">Storage Used: %($"storageused%)%</label>
<meter id="storage" value="%($"storageused%)" min="0" max="100"></meter><br>
% df -h /dev/vda2
</pre>

<p>Storage used by <i>%($"SERVER_NAME%)</i>

<pre>
% du2 -sh --time  /var/www/werc/sites/$SERVER_NAME 
</pre>

<p>Storage used by media

<pre>
% du2 -sh --time  /var/www/werc/pub/pix
</pre>

<p><b>Memory usage:</b>
<pre>
% free -h
</pre>
