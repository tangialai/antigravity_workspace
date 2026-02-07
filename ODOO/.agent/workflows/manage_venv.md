---
description: Manage and switch between Python Virtual Environments
---

# Manage Venv Workflow

Workflow này giúp bạn chọn và kích hoạt nhanh các môi trường Python đã cài đặt trong `ENV_CONFIG`.

## Kích hoạt Venv
Để kích hoạt môi trường, bạn cần sử dụng lệnh `source` với script `env_selector.sh`.
// turbo
1. Activate Python 3.10
```bash
source ~/WORKSPACE/ODOO/SCRIPTS/env_selector.sh 3.10
```

// turbo
2. Activate Python 3.12
```bash
source ~/WORKSPACE/ODOO/SCRIPTS/env_selector.sh 3.12
```

// turbo
3. Activate Python 3.13
```bash
source ~/WORKSPACE/ODOO/SCRIPTS/env_selector.sh 3.13
```

## Kiểm tra môi trường hiện tại
// turbo
4. Check current python
```bash
which python && python --version
```
