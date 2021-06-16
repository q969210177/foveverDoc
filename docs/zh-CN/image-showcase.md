## ImageShowcase 可以设置轮播也可以设置展示上传的组件
### 基础用法
:::demo
```html
<template>
<div style="height:100px">
  <el-image-showcase showType="card"  url="https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg" ></el-image-showcase>
</div>
</template>
<script>
  export default {}
</script>
```
:::
### 当url是数组的时候
:::demo
```html
<template>

<div >
<div style="height:100px">
  <el-image-showcase showType="card"  :url="url" ></el-image-showcase>
</div>
<p>
    轮播图模式
</p>
<div style="height:100px">
  <el-image-showcase showType="swiper"  :url="url" ></el-image-showcase>
</div>
</div>
</template>
<script>
  export default {
    data(){
        return{
            url:[
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            ]
        }
    }
  }
</script>
```
:::
### Attributes
| 参数      | 说明    | 类型      | 可选值       | 默认值   |
|---------- |-------- |---------- |-------------  |-------- |
| showType | 展示的方式 | string | card | swiper | swiper |
| url | 图片的url | array | [] | [] |
