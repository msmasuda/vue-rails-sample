<template>
  <div class="form">
    <el-row>
      <h1>新規登録</h1>
    </el-row>
    <CustomerForm
      :form="form"
      :process="process"
      @handleSubmit="handleSubmit"
    />
  </div>
</template>

<script>
import CustomerForm from './components/CustomerForm'
export default {
  components: { CustomerForm },
  data() {
    return {
      form: {
        name: '',
        phone: '',
        email: '',
        post_code: '',
        prefecture: '',
        address: '',
        gender: '',
        birthday: '',
        memo: ''
      },
      process: 'Create'
    }
  },
  methods: {
    handleSubmit() {
      if (!this.form.name) return
      this.$store.dispatch('customer/createCustomer', this.form)
      this.$router.push({ path: '/customer/index' })
    }
  }
}
</script>

<style lang="scss" scoped>
.form {
  width: 800px;
  margin: 20px;
}
</style>
