# Copyright (c) Facebook, Inc. and its affiliates.
from . import data  # register all new datasets
from . import modeling

# config
from .config import add_ovcoast_config

# dataset loading
from .data.dataset_mappers.detr_panoptic_dataset_mapper import DETRPanopticDatasetMapper
from .data.dataset_mappers.mask_former_panoptic_dataset_mapper import (
    MaskFormerPanopticDatasetMapper,
)
from .data.dataset_mappers.mask_former_semantic_dataset_mapper import (
    MaskFormerSemanticDatasetMapper,
)

# models
from .ovcoast_model import OVCOAST
from .test_time_augmentation import SemanticSegmentorWithTTA