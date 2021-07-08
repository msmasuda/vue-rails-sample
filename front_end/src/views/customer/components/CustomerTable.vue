<template>
  <el-table
    :data="customers"
    style="width: 100%"
  >
    <el-table-column
      prop="name"
      :label="$t('customer.name')"
      width="180"
    />
    <el-table-column
      prop="phone"
      :label="$t('customer.phone')"
    />
    <el-table-column
      prop="email"
      :label="$t('customer.email')"
    />
    <el-table-column
      prop="prefecture"
      :label="$t('customer.prefecture')"
    />
    <el-table-column
      prop="address"
      :label="$t('customer.address')"
    />
    <el-table-column>
      <template slot-scope="scope">
        <el-button size="mini" @click="handleEdit(scope.$index, scope.row)">Edit</el-button>
        <el-button size="mini" type="danger" @click="handleDelete(scope.$index, scope.row)">Delete</el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
export default {
  // 親要素からのデータの参照（親要素に記述されたカスタムタグからの値を受け取る変数）
  props: {
    // getters経由 customerAll: state => state.customerAll
    customers: {
      type: Array,
      default() {
        return []
      }
    }
  },
  methods: {
    handleEdit(index, row) {
      this.$emit('handleEdit', index, row)
    },
    handleDelete(index, row) {
      this.$emit('handleDelete', index, row)
    }
  }
}
</script>
