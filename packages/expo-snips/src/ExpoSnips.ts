import { NativeModulesProxy } from 'expo-core';

console.log(NativeModulesProxy);

for (const nativeModule in NativeModulesProxy) {
  console.log(nativeModule);
}

export default NativeModulesProxy.ExpoSnips;
