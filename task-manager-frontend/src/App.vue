<template>
  <div>
    <TaskList
      :tasks="tasks"
      :error="error"
      @showForm="showForm = true; selectedTask = {}"
      @editTask="editTask"
      @deleteTask="deleteTask"
    />
    <TaskForm
      v-if="showForm"
      :taskData="selectedTask"
      :editMode="editMode"
      @save="saveTask"
      @cancel="cancelForm"
    />
  </div>
</template>

<script>
import TaskList from './components/TaskList.vue';
import TaskForm from './components/TaskForm.vue';
import api from './services/api';

export default {
  components: { TaskList, TaskForm },
  data() {
    return {
      tasks: [],
      showForm: false,
      selectedTask: {},
      editMode: false,
      error: null
    }
  },
  created() {
    this.loadTasks();
  },
  methods: {
    async loadTasks() {
      try {
        const res = await api.get('/tasks');
        this.tasks = res.data;
      } catch {
        this.error = 'Failed to load tasks';
      }
    },
    async saveTask(task) {
      try {
        if (this.editMode) {
          await api.put(`/tasks/${task.id}`, task);
        } else {
          await api.post('/tasks', task);
        }
        this.cancelForm();
        this.loadTasks();
      } catch {
        this.error = 'Failed to save task';
      }
    },
    async deleteTask(id) {
      try {
        await api.delete(`/tasks/${id}`);
        this.loadTasks();
      } catch {
        this.error = 'Failed to delete task';
      }
    },
    editTask(task) {
      this.selectedTask = { ...task };
      this.editMode = true;
      this.showForm = true;
    },
    cancelForm() {
      this.showForm = false;
      this.editMode = false;
      this.selectedTask = {};
    }
  }
}
</script>
