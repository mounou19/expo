import { Platform } from 'expo-core';
import ExpoSnips from './ExpoSnips';

import { GetDocumentOptions, DocumentResult } from './types';

export async function testAsync({
  text = 'GO'
}: GetDocumentOptions = {}): Promise<DocumentResult> {
  console.log(Platform.OS);
  /*if (!ExpoSnips.testAsync) {
    throw new Error(`ExpoSnips.testAsync is not supported on ${Platform.OS}`);
  }*/
  console.log('1');
  console.log(ExpoSnips);
  return ExpoSnips.testAsync({
    text
  });
}
