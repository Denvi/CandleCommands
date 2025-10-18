[
    {
        "hint": "Обнулить XY",
        "imageName": "axis_zero.png",
        "imageBase64": "",
        "type": "0",
        "code": "G92 X0 Y0\n{var storedG92x = vars.G92x}\n{var storedG92y = vars.G92y}\n{var storedG92z = vars.G92z}"
    },
    {
        "hint": "Обнулить Z",
        "imageName": "zero_z.png",
        "imageBase64": "",
        "type": "0",
        "code": "G92 Z0\n{var storedG92x = vars.G92x}\n{var storedG92y = vars.G92y}\n{var storedG92z = vars.G92z}"
    },
    {
        "hint": "Восстановить СК",
        "imageName": "*restore.png",
        "imageBase64": "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAtGVYSWZJSSoACAAAAAYAEgEDAAEAAAABAAAAGgEFAAEAAABWAAAAGwEFAAEAAABeAAAAKAEDAAEAAAACAAAAEwIDAAEAAAABAAAAaYcEAAEAAABmAAAAAAAAAEgAAAABAAAASAAAAAEAAAAGAACQBwAEAAAAMDIxMAGRBwAEAAAAAQIDAACgBwAEAAAAMDEwMAGgAwABAAAA//8AAAKgBAABAAAAMAAAAAOgBAABAAAAMAAAAAAAAAANg05RAAACrklEQVR4nO2ZS2sUQRDHf2pcfOVkVkGMD5BkFbz6wAcaxMcniJgP4MEPkJO6fokg4kkvJj6C3vQgksQHGF+HkCWoUY+igSwKCpKVhloYmp7Z7p6emQTmD3XYna2qf9dWVVf3QIkSJUoUiVUBbe0BzgBHgBqwE+iWZ03gG9AApoDHwCeWAbqAIeAF0HKU58AFYE1R5M8Ccx7EdWkAp/MkvgG4GYC4LjeA9VmT3wK8iSGwBEwDl4ETQD+wUaQm311J0G8Br4FqluQbMcRHgT4HW2pxd0XXlFLVLNLGFLmPwIEUdg8Bn2P+iXUB+Rtz/imwOYDtHuCZwf51AnYbE/m1oRwAlZhFnArR5+cMaRMi8jp6DOk0m3afGDIUbJqc74TDhsI+n8bgS83YHbLHPc2nGj28Zxs9+i6t0hc1g9/dPoYuGVpbXnir+b4Y98PVCUbUVBnFIwcCvZIKTZFx2bxs8VD7fAwPvNOioEYBW/I/DS1xQZ7ZYEDTVZuoM35oRvo8izAqY5Y2+jW97z4L+KsZaR9OOqGZsIBFSxvdmt6fpBqoxzirWBBTui5QOpmg7ji7J5EfT9BRU2tmKVQPQL7tfMGgo2pqu2cRT1vqWS3CJm16pWAXRUYdyJt43MYBwwnkr5IP3ttuZC7/hGvB+mKvYZTY5WNouIDIKzzQFjBJCtRzjHx7fNHH6UFWCKrAvEZ+psiLLxdUgAlD3al2uiIiP2EgP5KHczWhHk2Z8/MG8q9CX6uYcBL4LUV3C9jv2Crvx+w1s3LAzxTHgV8G51ORq8UdciG2SY6JA9LR9HNGS4t8ZleLUVwD/nkMgEkykkfaRHEQ+BCA+EyR3Ua94TkHPIm5qI2TJdlhBzucy60IhMI2iaSSfcBWudHuksPQV7l5npRXTF8C+i5RokQJisF/F4Kvb46OYoYAAAAASUVORK5CYII=",
        "type": "0",
        "code": "G92 X{vars.Mx - storedG92x - vars.x} Y{vars.My - storedG92y - vars.y} Z{vars.Mz - storedG92z - vars.z}"
    }
]