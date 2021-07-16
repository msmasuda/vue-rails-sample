<template>
  <div class="form">
    <el-row>
      <h1>変更</h1>
    </el-row>
    <CustomerForm
      :form="form"
      :prefectures="prefectures"
      :genders="genders"
      :process="process"
      @handleSubmit="handleSubmit"
      @handleCancel="handleCancel"
    />
  </div>
</template>

<script>
import CustomerForm from './components/CustomerForm'
import { mapGetters } from 'vuex'
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
  computed: {
    ...mapGetters({
      prefectures: 'prefectures',
      genders: 'genders'
    })
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
    },
    handleCancel() {
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
