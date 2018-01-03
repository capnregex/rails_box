
## repackage box as new box
vagrant package --output mynew.box

## install new box
vagrant box add mynewbox mynew.box

# clear out vagrant image
vagrant destroy
rm Vagrantfile

## initialize new box
vagrant init mynewbox

