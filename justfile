default:
    @just --list --unsorted

purge_cache_test:
    act push -W .github/workflows/custom-action-two.yml