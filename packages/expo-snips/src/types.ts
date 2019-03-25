export type GetDocumentOptions = {
  text?: string;
};

export type DocumentResult = {
  type: 'success' | 'cancel';
  text?: string;
};
