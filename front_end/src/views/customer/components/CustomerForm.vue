<template>
  <el-form ref="form" :model="form" label-width="120px">
    <el-form-item :label="$t('customer.name')">
      <el-input v-model="form.name" />
    </el-form-item>
    <el-form-item :label="$t('customer.phone')">
      <el-input v-model="form.phone" />
    </el-form-item>
    <el-form-item :label="$t('customer.email')">
      <el-input v-model="form.email" />
    </el-form-item>
    <el-form-item :label="$t('customer.post_code')">
      <el-input v-model="form.post_code" />
    </el-form-item>
    <el-form-item :label="$t('customer.prefecture')">
      <el-select v-model="form.prefecture" placeholder="都道府県選択">
        <el-option v-for="option in prefectures" :key="option.value" :label="option.text" :value="option.value" />
      </el-select>
    </el-form-item>
    <el-form-item :label="$t('customer.address')">
      <el-input v-model="form.address" />
    </el-form-item>
    <el-form-item :label="$t('customer.gender')">
      <el-radio-group v-model="form.gender">
        <el-radio v-for="g in genders" :key="g.value" :label="g.value" border>{{ $t(g.text) }}</el-radio>
      </el-radio-group>
    </el-form-item>
    <el-form-item :label="$t('customer.birthday')">
      <el-col :span="11">
        <el-date-picker v-model="form.birthday" type="date" placeholder="Pick a date" style="width: 100%;" />
      </el-col>
    </el-form-item>
    <el-form-item :label="$t('customer.memo')">
      <el-input v-model="form.memo" type="textarea" />
    </el-form-item>
    <el-form-item>
      <!-- クリックでonSubmitイベントが発火 -->
      <el-button type="primary" @click="handleSubmit">{{ process }}</el-button>
      <el-button @click="handleCancel">Cancel</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
export default {
  props: {
    form: {
      type: Object,
      default() {
        return {
          name: '',
          phone: '',
          email: '',
          post_code: '',
          prefecture: '',
          address: '',
          gender: '',
          birthday: '',
          memo: ''
        }
      }
    },
    process: {
      type: String,
      default() {
        return ''
      }
    },
    prefectures: {
      type: Array,
      default() {
        return []
      }
    },
    genders: {
      type: Array,
      default() {
        return []
      }
    }
  },
  // data() {
  //   return {
  //     options: [
  //       { value: 1, text: '北海道' },
  //       { value: 2, text: '東京都' },
  //       { value: 3, text: '福岡県' }
  //     ]
  //   }
  // },
  methods: {
    onSubmit() {
      if (!this.form.name) return
      // store/modules/customerのアクションcreateCustomerを呼び出し、
      this.$store.dispatch('customer/createCustomer', this.form)
      this.$router.push({ path: '/customer/index' })
    },
    handleSubmit() {
      this.$emit('handleSubmit')
    },
    handleCancel() {
      this.$emit('handleCancel')
    }
  }
}
</script>
