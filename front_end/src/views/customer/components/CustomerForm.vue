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
        <el-option label="北海道" value="0" />
      </el-select>
    </el-form-item>
    <el-form-item :label="$t('customer.address')">
      <el-input v-model="form.address" />
    </el-form-item>
    <el-form-item :label="$t('customer.gender')">
      <el-radio-group v-model="form.gender">
        <el-radio label="Male" value="0" />
        <el-radio label="Female" value="1" />
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
      <el-button>Cancel</el-button>
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
    }
  },
  methods: {
    onSubmit() {
      if (!this.form.name) return
      // store/modules/customerのアクションcreateCustomerを呼び出し、
      this.$store.dispatch('customer/createCustomer', this.form)
      this.$router.push({ path: '/customer/index' })
    },
    handleSubmit() {
      this.$emit('handleSubmit')
    }
  }
}
</script>
