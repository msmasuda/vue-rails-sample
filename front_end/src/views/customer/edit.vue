<template>
  <div class="form">
    <el-row>
      <h1>変更</h1>
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
      process: 'Edit'
    }
  },
  created() {
    // サーバから最新データを取得する
    this.form = this.$route.params.form
  },
  methods: {
    handleSubmit() {
      if (!this.form.name) return
      // store/modules/customerのアクションeditCustomerを呼び出し、
      this.$store.dispatch('customer/editCustomer', this.form)
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
