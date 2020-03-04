# fork from Paull/hiwifi.easucks

这是个盗版，我只是为了在极x上能用上ss，多余功能暂不需要。

## 源项目作者注：支持的路由器型号及固件
路由器型号 | 官方固件 < 1.2.5 | 1.2.5 <= 官方固件 <= 1.5.9 | 非官方固件 |
------------ | ------------- | ------------- | ------------- |
极1s | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极2 | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极3 | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极4 | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极B70 | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极X | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极Enjoy | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极路由美的 | :heavy_multiplication_x:不支持 | :heavy_check_mark:支持 | :heavy_multiplication_x:不支持 |
极路由其它 | :heavy_multiplication_x:不支持 | :interrobang:待测 | :heavy_multiplication_x:不支持 |

理论支持极路由所有型号，需升级至官方固件最新版:bangbang: 

## 安装步骤：
- 第一步：申请开发者模式
  - 登录极路由后台->智能插件->路由器信息->高级设置->申请开发者模式
- 第二步：开启ssh服务
  - 安装「开发者模式」这个插件既可开启ssh服务
- 第三步：登录ssh
  - 使用ssh客户端连接路由器的IP地址(一般是192.168.199.1)和1022端口
  - 登录ssh需要帐号密码，帐号是root，密码一般就是wifi密码
- 第四步：安装
  - 在ssh上执行一句话安装指令：`curl https://raw.githubusercontent.com/xhay1122/hiwifi.myss/master/install.sh|sh`
  
## 卸载方法
- 推荐直接恢复出厂，简单干净。
- 或者进入极路由的ssh，执行卸载命令：
```
cat /lib/upgrade/keep.d/flyss|xargs rm
sed -i '/flyss/d' /usr/lib/lua/luci/view/admin_web/home.htm
sed -i '/flyss/d' /usr/lib/lua/luci/view/admin_web/network/index.htm
```

## 如何反馈
- 既然是在github看到的，那就提交Issue吧
