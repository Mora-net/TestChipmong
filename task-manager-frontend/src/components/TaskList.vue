<template>
  <div class="container mt-4">
    <h2>Task List</h2>
    <button class="btn btn-primary mb-3" @click="$emit('showForm')">Add Task</button>

    <table class="table table-striped table-bordered">
      <thead>
        <tr>
          <th>Title</th>
          <th>Description</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="task in tasks" :key="task.id">
          <td>{{ task.title }}</td>
          <td>{{ task.description }}</td>
          <td>
            <button class="btn btn-warning btn-sm" @click="$emit('editTask', task)">Edit</button>
            <button class="btn btn-danger btn-sm" @click="$emit('deleteTask', task.id)">Delete</button>
          </td>
        </tr>
      </tbody>
    </table>

    <div v-if="error" class="alert alert-danger">{{ error }}</div>
  </div>
</template>

<script>
export default {
  props: ['tasks', 'error']
}
</script>
