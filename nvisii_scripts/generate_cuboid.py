import nvisii
import numpy as np

# # # # # # # # # # # # # # # # # # # # # # # # #
# Function to add cuboid information to an object using 
def add_cuboid(name, debug=False):
    """
    Add cuboid children to the transform tree to a given object for exporting

    :param name: string name of the nvisii entity to add a cuboid
    :param debug:   bool - add sphere on the nvisii entity to make sure the  
                    cuboid is located at the right place. 

    :return: return a list of cuboid in canonical space of the object. 
    """

    obj = nvisii.entity.get(name)

    min_obj = obj.get_mesh().get_min_aabb_corner()
    max_obj = obj.get_mesh().get_max_aabb_corner()
    centroid_obj = obj.get_mesh().get_aabb_center()

    cuboid = [
        nvisii.vec3(max_obj[0], max_obj[1], max_obj[2]),
        nvisii.vec3(min_obj[0], max_obj[1], max_obj[2]),
        nvisii.vec3(max_obj[0], min_obj[1], max_obj[2]),
        nvisii.vec3(max_obj[0], max_obj[1], min_obj[2]),
        nvisii.vec3(min_obj[0], min_obj[1], max_obj[2]),
        nvisii.vec3(max_obj[0], min_obj[1], min_obj[2]),
        nvisii.vec3(min_obj[0], max_obj[1], min_obj[2]),
        nvisii.vec3(min_obj[0], min_obj[1], min_obj[2]),
        nvisii.vec3(centroid_obj[0], centroid_obj[1], centroid_obj[2]), 
    ]

    # change the ids to be like ndds / DOPE
    cuboid = [  cuboid[2],cuboid[0],cuboid[3],
                cuboid[5],cuboid[4],cuboid[1],
                cuboid[6],cuboid[7],cuboid[-1]]

    cuboid.append(nvisii.vec3(centroid_obj[0], centroid_obj[1], centroid_obj[2]))
        
    for i_p, p in enumerate(cuboid):
        child_transform = nvisii.transform.create(f"{name}_cuboid_{i_p}")
        child_transform.set_position(p)
        child_transform.set_scale(nvisii.vec3(0.3))
        child_transform.set_parent(obj.get_transform())
        if debug: 
            nvisii.entity.create(
                name = f"{name}_cuboid_{i_p}",
                mesh = nvisii.mesh.create_sphere(f"{name}_cuboid_{i_p}"),
                transform = child_transform, 
                material = nvisii.material.create(f"{name}_cuboid_{i_p}")
            )
    
    for i_v, v in enumerate(cuboid):
        cuboid[i_v]=[v[0], v[1], v[2]]

    return cuboid


def get_cuboid_image_space(obj_id, camera_name = 'camera'):
    """
    reproject the 3d points into the image space for a given object. 
    It assumes you already added the cuboid to the object 

    :obj_id: string for the name of the object of interest
    :camera_name: string representing the camera name in nvisii

    :return: cubdoid + centroid projected to the image, values [0..1]
    """

    cam_matrix = nvisii.entity.get(camera_name).get_transform().get_world_to_local_matrix()
    cam_proj_matrix = nvisii.entity.get(camera_name).get_camera().get_projection()

    points = []
    points_cam = []
    for i_t in range(9):
        trans = nvisii.transform.get(f"{obj_id}_cuboid_{i_t}")
        mat_trans = trans.get_local_to_world_matrix()
        pos_m = nvisii.vec4(
            mat_trans[3][0],
            mat_trans[3][1],
            mat_trans[3][2],
            1)
        
        p_cam = cam_matrix * pos_m 

        p_image = cam_proj_matrix * (cam_matrix * pos_m) 
        p_image = nvisii.vec2(p_image) / p_image.w
        p_image = p_image * nvisii.vec2(1,-1)
        p_image = (p_image + nvisii.vec2(1,1)) * 0.5

        points.append([p_image[0],p_image[1]])
        points_cam.append([p_cam[0],p_cam[1],p_cam[2]])
    return points, points_cam