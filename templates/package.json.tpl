{
  "name": "@phoenixs-widgets/{{{ packageName }}}",
  "description": "组件描述...",
  "version": "0.0.1",
  "repository": {
		"type": "git",
		"url": ""
	},
  "scripts": {
    "start": "dumi dev",
    "docs:build": "dumi build",
    "docs:deploy": "gh-pages -d docs-dist",
    "build": "father-build",
    "deploy": "npm run docs:build && npm run docs:deploy",
    "prettier": "prettier --write \"**/*.{js,jsx,tsx,ts,less,md,json}\"",
    "test": "umi-test",
    "test:coverage": "umi-test --coverage",
    "pub": "node publish/index.js"
  },
  "module": "dist/index.js",
  "typings": "dist/index.d.ts",
  "gitHooks": {
    "pre-commit": "lint-staged"
  },
  "lint-staged": {
    "*.{js,jsx,less,md,json}": [
      "prettier --write"
    ],
    "*.ts?(x)": [
      "prettier --parser=typescript --write"
    ]
  },
  "devDependencies": {
    "@testing-library/jest-dom": "^5.15.1",
    "@testing-library/react": "^12.1.2",
    "@types/jest": "^27.0.3",
    "@types/lodash": "^4.14.178",
    "@umijs/fabric": "^2.8.1",
    "@umijs/test": "^3.0.5",
    "axios": "^0.26.0",
    "dumi": "^1.1.0",
    "father-build": "^1.17.2",
    "gh-pages": "^3.0.0",
    "lint-staged": "^10.0.7",
    "prettier": "^2.2.1",
    "rollup-plugin-commonjs": "^10.1.0",
    "rollup-plugin-replace": "^2.2.0",
    "shelljs": "^0.8.5",
    "yorkie": "^2.0.0"
  },
  "peerDependencies": {
    "react": "^16.12.0 || ^17.0.0",
    "antd": "^4.18.6"
  },
  "publishConfig": {
    "registry": "https://registry.npmjs.org/",
    "access": "public"
  }
}
