yum install epel-release pam pam-devel gcc python-devel qrencode python-pip git -y
git clone https://github.com/jx-sec/pam-python-ipcpu.git
cd pam-python-ipcpu/
make lib
cp src/build/lib.*/pam_python.so /lib64/security/
cd ..
pip install pyotp 
python generate_qrcode.py
cp auth.py /lib64/security/


