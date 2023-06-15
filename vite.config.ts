import { defineConfig } from 'vite';
import { resolve } from 'path';

export default defineConfig({
	build: {
		lib: {
			entry: resolve(__dirname, 'src/index.ts'),
			name: 'lambda',
			fileName: 'index',
			formats: ['cjs'],
		},
		outDir: resolve(__dirname, 'dist'),
		sourcemap: true
	}
});