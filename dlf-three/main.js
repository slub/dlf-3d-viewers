import * as THREE from './modules/three.js-r165/build/three.module.js';
import {OrbitControls} from './modules/three.js-r165/examples/jsm/controls/OrbitControls.js'
import {PLYLoader} from './modules/three.js-r165/examples/jsm/loaders/PLYLoader.js'
import Stats from './modules/three.js-r165/examples/jsm/libs/stats.module.js'

const scene = new THREE.Scene()
scene.background = new THREE.Color();
scene.add(new THREE.AxesHelper(5))

const light = new THREE.SpotLight()
light.position.set(20, 20, 20)
scene.add(light)

const camera = new THREE.PerspectiveCamera(
    75,
    window.innerWidth / window.innerHeight,
    0.1,
    500
)
camera.position.y = 0
camera.position.z = 200

const renderer = new THREE.WebGLRenderer()
renderer.setSize(window.innerWidth, window.innerHeight)
document.body.appendChild(renderer.domElement)

const controls = new OrbitControls(camera, renderer.domElement)
controls.enableDamping = true

/*
const envTexture = new THREE.CubeTextureLoader().load([
    'img/px_50.png',
    'img/nx_50.png',
    'img/py_50.png',
    'img/ny_50.png',
    'img/pz_50.png',
    'img/nz_50.png',
])

envTexture.mapping = THREE.CubeReflectionMapping
*/
const material = new THREE.MeshPhysicalMaterial({
    color: 0xb2ffc8,
//   envMap: envTexture,
    metalness: 0,
    roughness: 0,
    transparent: true,
    transmission: 1.0,
    side: THREE.DoubleSide,
    clearcoat: 1.0,
    clearcoatRoughness: 0.25,
})

const loader = new PLYLoader()
const urlParams = new URLSearchParams( window.location.search);

loader.load(
    urlParams.get('model'),
    function (geometry) {
        geometry.computeVertexNormals()

        const mesh = new THREE.Mesh(geometry, material)
        mesh.position.y = 40;
        scene.add(mesh)

    },
    (xhr) => {
        console.log((xhr.loaded / xhr.total) * 100 + '% loaded')
    },
    (error) => {
        console.log(error)
    }
)

window.addEventListener('resize', onWindowResize, false)

function onWindowResize() {
    camera.aspect = window.innerWidth / window.innerHeight
    camera.updateProjectionMatrix()
    renderer.setSize(window.innerWidth, window.innerHeight)
    render()
}

const stats = new Stats()
document.body.appendChild(stats.dom)

function animate() {
    requestAnimationFrame(animate)

    controls.update()

    render()

    stats.update()
}

function render() {
    renderer.render(scene, camera)
}

animate()
