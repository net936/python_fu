import { get, post } from '/@/utils/http/axios';

const URL = {
  list: '/myapp/admin/feedback/list',
  delete: '/myapp/admin/feedback/delete',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });
const deleteApi = async (params) => post({ url: URL.delete, params: params, headers: {} });

export { listApi, deleteApi };
