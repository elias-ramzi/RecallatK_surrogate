# Recall@k Surrogate Loss with Large Batches and Similarity Mixup
[**Recall@k Surrogate Loss with Large Batches and Similarity Mixup**](https://arxiv.org/abs/2108.11179),
[*Yash Patel*](https://yash0307.github.io/),
[*Giorgos Tolias*](https://cmp.felk.cvut.cz/~toliageo/),
[*Jiri Matas*](https://cmp.felk.cvut.cz/~matas/),
IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR), 2022.


## Citation

If you make use of the code in this repository for scientific purposes, we appreciate it if you cite our paper:
```latex
@article{patel2022recall,
  title={Recall@k Surrogate Loss with Large Batches and Similarity Mixup},
  author={Patel, Yash and Tolias, Giorgos and Matas, Jiri},
  journal={CVPR},
  year={2022}
}
```


## Run the code

<details>
  <summary><b>iNaturalist</b></summary><br/>

```
CUDA_VISIBLE_DEVICES='0' python main.py \
--dataset Inaturalist \
--source_path /users/r/ramzie/datasets
```

```
CUDA_VISIBLE_DEVICES='2' python main.py \
--dataset Inaturalist \
--source_path /local/DEEPLEARNING/image_retrieval \
--amp
```

</details>
