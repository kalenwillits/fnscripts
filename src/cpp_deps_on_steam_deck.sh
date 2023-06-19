set -xe;
fn steamos-unlock;

sudo pacman -S git;
# sudo pacman -S base-devel;
# sudo pacman -S cmake;
# sudo pacman -S ninja;
# sudo pacman -S glibc linux-api-headers;
sudo pacman -S glibc
sudo pacman -S lib32-glibc
sudo pacman -S linux-headers
sudo pacman -S linux-api-headers

fn streamos-lock;



