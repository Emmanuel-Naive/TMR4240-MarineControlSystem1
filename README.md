# TMR4240-MarineControlSystem1
为了更快地抄代码（主要是出simulink的矢量图，matlab出图的代码）

1) 出Simulink的模型图的代码在init.m

代码为：print -dmeta（出emf图） -s（模型名字） （图片名字）.emf

出图代码例子1（emf为矢量增强图，可用于word）：            print -dmeta -spart_2 model.emf

出图代码例子2（eps为矢量图，不可用于word，可用于latex）： print -dmeta -sErrorDynamicFor4 model.eps

2) Simulink导出的数据后在Matlab绘图代码在EMFplot.m

Matlab绘图后可另存为其他格式（emf,eps,...）

推荐导出的数据格式为Structure with time 或者是 Array（在To Workspace，To File里选择）

不推荐Timeseries
