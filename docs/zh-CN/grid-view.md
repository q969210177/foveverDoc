## GridView 根据数组渲染的详情展示
***默认占据父元素的100%的宽高***
### 基础用法
:::demo 
```html
<template>
    <el-grid-view
      :count="4"
      :labelList="tableColumns"
      :data="gridView"
    >
    </el-grid-view>
</template>

<script>
  export default {
    data() {
      return {
        gridView: {
            hzysb: [
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg']
        },
        tableColumns: [
            {
            prop: 'hzkssj',
            label: '预约会诊时间',
            span: '2',
            tooltip: true
            },
            {
            prop: 'hzyya',
            label: '会诊医院',
            span: '2'
            },
            {
            prop: 'hzysb',
            label: '会诊医生',
            span: '4',
            row: 3,
            type: 'img',
            cprops: {
                showType: 'card'
            }
            },
            {
            prop: 'hzysc',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysd',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysd',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysz',
            label: '会诊医生',
            span: '1'
            }
        ]
      }
    }
  }
</script>
```
:::
### 带边框的
:::demo 
```html
<template>
    <div style="height:500px">
        <el-grid-view
        :count="4"
        :labelList="tableColumns"
        :data="gridView"
        :border="true"
        >
        </el-grid-view>
    </div>
    <h1>带阴影的详情</h1>
    <div style="height:500px">
        <el-grid-view
        :count="4"
        :labelList="tableColumns"
        :data="gridView"
        :border="true"
        :shadow="true"
        >
        </el-grid-view>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        gridView: {
            hzysb: [
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg']
        },
        tableColumns: [
            {
            prop: 'hzkssj',
            label: '预约会诊时间',
            span: '2',
            tooltip: true
            },
            {
            prop: 'hzyya',
            label: '会诊医院',
            span: '2'
            },
            {
            prop: 'hzysb',
            label: '会诊医生',
            span: '4',
            row: 3,
            type: 'img',
            cprops: {
                showType: 'card'
            }
            },
            {
            prop: 'hzysc',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysd',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysd',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysz',
            label: '会诊医生',
            span: '1'
            }
        ]
      }
    }
  }
</script>
```
:::
### 可以翻页展示图片
:::warning
    labelList里面的cprops 会作为参数传到组件里面 后面会更新 可以传入组件
:::
:::demo 
```html
<template>
    <div style="height:300px">
        <el-grid-view
        :count="4"
        :labelList="tableColumns"
        :data="gridView"
        :border="true"
        size='small'
        >
        </el-grid-view>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        gridView: {
            hzysb: [
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg',
            'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
            'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
            'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg']
        },
        tableColumns: [
            {
            prop: 'hzkssj',
            label: '预约会诊时间',
            span: '2',
            tooltip: true
            },
            {
            prop: 'hzyya',
            label: '会诊医院',
            span: '2'
            },
            {
            prop: 'hzysb',
            label: '会诊医生',
            span: '2',
            row: 3,
            type: 'img',
            cprops: {}
            },
            {
            prop: 'hzysc',
            label: '会诊医生',
            span: '2',
            row: 3,
            },
            {
            prop: 'hzysd',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysd',
            label: '会诊医生',
            span: '1'
            },
            {
            prop: 'hzysz',
            label: '会诊医生',
            span: '2'
            }
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
| count | 每一列的列数 | string | — | 3 |
| data | 展示的数据(如果type是img模式那就是图片的路径) | object | {} | - |
| labelList | 用来渲染的数组(详细配置在下面) | array | - | [] |
| size | 主要是决定行高 | string | medium small mini big | medium |
| border | 是否开启边框 | boolean | — | false |
| shadow | 是否展示阴影 | sboolean | — | false |
| labelWidth | label的宽度 | string | — | - |
| globalTip | 没有数据的时候的提示信息  | string | — | 暂无数据 |


### labelListItem配置项
| 参数      | 说明    | 类型      | 可选值       | 默认值   |
|---------- |-------- |---------- |-------------  |-------- |
| prop | 展示的数据的key | string | — | - |
| label | 展示数据的label | string | - | - |
| span | 相对于 count的长度 | string | - | 1 |
| tooltip | 长度超出后是否展示描述| boolean | - | false |
| row | 行高 | number | string | — | 1 |
| type | 目前只支持img或者不传(后续会继续维护) | 子项的展示方式 | — | — |
| cprops | 传过来的会全部传给下一级的子组件 | object | {} | {} |
