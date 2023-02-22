# gym-collision-avoidance

<img src="docs/_static/combo.gif" alt="Agents spelling ``CADRL''">

This is the code associated with the following publications:

[mention paper here]

In this paper/repo we add providence to the agents by using their relative velocities (in a sense) and detect which agents are moving aggressively toward each other to penalize them. This repo adds this capability to the original code, nothing is removed. Additionally, the rewarding mechanism has been improved to favor penalizing collisions prior to rewarding goal achievements.

Please note that this repo and the [rl training repo](https://github.com/indirected/rl_collision_avoidance) are both a fork of previous work of a different author. please make sure to cite them as well when required.

The repo contains the trained PA-CADRL policy introduced in the paper above.

Our work is based upon the previous work mentioned below:

**Journal Version:** M. Everett, Y. Chen, and J. P. How, "Collision Avoidance in Pedestrian-Rich Environments with Deep Reinforcement Learning", IEEE Access Vol. 9, 2021, pp. 10357-10377. [10.1109/ACCESS.2021.3050338](http://doi.org/10.1109/ACCESS.2021.3050338), [Arxiv PDF](https://arxiv.org/abs/1910.11689)

**Conference Version:** M. Everett, Y. Chen, and J. P. How, "Motion Planning Among Dynamic, Decision-Making Agents with Deep Reinforcement Learning", IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), 2018. [Arxiv PDF](https://arxiv.org/abs/1805.01956), [Link to Video](https://www.youtube.com/watch?v=XHoXkWLhwYQ)

This repo also contains the trained policy for the SA-CADRL paper (referred to as CADRL here) from the proceeding paper: Y. Chen, M. Everett, M. Liu, and J. P. How. “Socially Aware Motion Planning with Deep Reinforcement Learning.” IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS). Vancouver, BC, Canada, Sept. 2017. [Arxiv PDF](https://arxiv.org/abs/1703.08862)

If you're looking to train our PA-CADRL policy or the previous GA3C-CADRL policy, please see [this repo](https://github.com/indirected/rl_collision_avoidance) instead.

---

### About the Code

Please see [the documentation](https://gym-collision-avoidance.readthedocs.io/en/latest/)!

### If you find this code useful, please consider citing:

```
@inproceedings{Everett18_IROS,
  address = {Madrid, Spain},
  author = {Everett, Michael and Chen, Yu Fan and How, Jonathan P.},
  booktitle = {IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  date-modified = {2018-10-03 06:18:08 -0400},
  month = sep,
  title = {Motion Planning Among Dynamic, Decision-Making Agents with Deep Reinforcement Learning},
  year = {2018},
  url = {https://arxiv.org/pdf/1805.01956.pdf},
  bdsk-url-1 = {https://arxiv.org/pdf/1805.01956.pdf}
}
```

or

```
@article{everett2021collision,
  title={Collision avoidance in pedestrian-rich environments with deep reinforcement learning},
  author={Everett, Michael and Chen, Yu Fan and How, Jonathan P},
  journal={IEEE Access},
  volume={9},
  pages={10357--10377},
  year={2021},
  publisher={IEEE}
}
```
