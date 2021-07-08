<template>
  <div class="app-container documentation-container">
    <el-row>
      <router-link :to="'/customer/new'" class="el-button el-button--primary">
        <span>新規登録</span>
      </router-link>
    </el-row>
    <CustomerTable
      :customers="customers"
      @handleEdit="doUpdate"
      @handleDelete="doDelete"
    />
  </div>
</template>

<script>
import CustomerTable from './components/CustomerTable'
import { mapGetters } from 'vuex'

export default {
  name: 'Customer',
  components: { CustomerTable },
  computed: {
    ...mapGetters({
      customers: 'customer/customerAll'
    })
  },
  mounted() {
    this.$store.dispatch('customer/getCustomers')
  },
  methods: {
    doUpdate(index, row) {
      this.$router.push({
        name: 'editCustomer',
        params: { form: row }
      })
    },
    doDelete(index, row) {
      this.$store.dispatch('customer/deleteCustomer', row)
      this.$nextTick(() => {
        this.$store.dispatch('customer/getCustomers')
      })
    }
  }
}
</script>

<style lang="scss" scoped>
</style>
