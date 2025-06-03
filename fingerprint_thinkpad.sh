!#/bin/bash
apt install fprintd libpam-fprintd -y
echo
echo "Fingerabdruck einlesen"
fprintd-enroll kaac128
echo
echo "Fingerabdruck pruefen"
fprintd-verify
echo
echo "Fingerabdruck Authentifizierung aktivieren"
sudo pam-auth-update
echo
echo "add this >auth            sufficient      pam_unix.so try_first_pass likeauth nullok< to top of /etc/pam.d/sddm"
