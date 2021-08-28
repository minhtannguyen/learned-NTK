# Learning Representation with NTK

## How to run this code 

### Examples for networks other than WideResNet28_10


##### Use the following commond in the root folder for training:

LeNet on MNIST via SGD without data augmentation:

```
python main.py --dataset=mnist --data-aug=0 --model=LeNet  --method=0
```    

LeNet on MNIST via Ordered SGD without data augmentation:

```
python main.py --dataset=mnist --data-aug=0 --model=LeNet  --method=1
```

LeNet on KMNIST via Ordered SGD with data augmentation:

```
python main.py --dataset=kmnist --data-aug=1 --model=LeNet  --method=1
```

LeNet on Fashion MNIST via Ordered SGD with data augmentation:

```
python main.py --dataset=fashionmnist --data-aug=1 --model=LeNet  --method=1
```

PreActResNet18 on CIFAR-10 via SGD without data augmentation:

```
python main.py --dataset=cifar10 --data-aug=0 --model=PreActResNet18 --method=0
```    

PreActResNet18 on CIFAR-10 via Ordered SGD without data augmentation：

```
python main.py --dataset=cifar10 --data-aug=0 --model=PreActResNet18 --method=1
```

PreActResNet18 on CIFAR-10 via SGD with data augmentation:

```
python main.py --dataset=cifar10 --data-aug=1 --model=PreActResNet18 --method=0
```    

PreActResNet18 on CIFAR-10 via Ordered SGD with data augmentation：

```
python main.py --dataset=cifar10 --data-aug=1 --model=PreActResNet18 --method=1
```

##### After training via both SGD and Ordered SGD, use the following commond in the root folder for plotting:

LeNet on MNIST without data augmentation:

```
python plot.py --dataset=mnist --data-aug=0 --model=LeNet
```

LeNet on MNIST with data augmentation:

```
python plot.py --dataset=mnist --data-aug=1 --model=LeNet
```

LeNet on KMNIST with data augmentation:

```
python plot.py --dataset=kmnist --data-aug=1 --model=LeNet
```

LeNet on Fashion MNIST with data augmentation:

```
python plot.py --dataset=fashionmnist --data-aug=1 --model=LeNet
```

PreActResNet18 on CIFAR-10 with data augmentation：

```
python plot.py --dataset=cifar10 --data-aug=1 --model=PreActResNet18
```

### WideResNet28_10

##### Use the following commond in folder 'cifar10_WideResNet':

for SGD:

```
python cifar.py --dataset cifar10 --p 0.5 --arch wrn --depth 28 --widen-factor 10 --schedule 100 200 --method=0 
```

for Ordered SGD:

```
python cifar.py --dataset cifar10 --p 0.5 --arch wrn --depth 28 --widen-factor 10 --schedule 100 200 --method=1 
```

Disclaimer: the code for WideResNet28_10 with CIFAR-10 is based on the code from random erasing repo: (https://github.com/zhunzhong07/Random-Erasing)

### This code has been tested with:
Python 3.6.7  
torch 1.0.1 
