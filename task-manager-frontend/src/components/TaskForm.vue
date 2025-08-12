<template>
  <div class="card p-3">
    <h3>{{ editMode ? 'Edit Task' : 'Add Task' }}</h3>
    <form @submit.prevent="saveTask">
      <div class="mb-3">
        <label>Title</label>
        <input v-model="task.title" type="text" class="form-control" required />
      </div>
      <div class="mb-3">
        <label>Description</label>
        <textarea v-model="task.description" class="form-control" required></textarea>
      </div>
      <button type="submit" class="btn btn-success">Save</button>
      <button type="button" class="btn btn-secondary ms-2" @click="$emit('cancel')">Cancel</button>
    </form>
  </div>
</template>

<script>
export default {
  props: ['taskData', 'editMode'],
  data() {
    return {
      task: { ...this.taskData }
    }
  },
  methods: {
    saveTask() {
      if (!this.task.title.trim() || !this.task.description.trim()) {
        alert('All fields are required');
        return;
      }
      this.$emit('save', this.task);
    }
  }
}
</script>
