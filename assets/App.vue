<template>
    <v-app dark>
        <v-navigation-drawer
            :mini-variant="miniVariant"
            :clipped="clipped"
            v-model="drawer"
            fixed
            app
        >
            <v-list>
                <v-list-tile exact>
                    <v-btn
                        icon
                        @click.native.stop="miniVariant = !miniVariant"
                    >
                        <v-icon v-html="miniVariant ? 'chevron_right' : 'chevron_left'"></v-icon>
                    </v-btn>
                </v-list-tile>
                <v-list-tile
                    router
                    :to="item.to"
                    :key="i"
                    v-for="(item, i) in items"
                    exact
                >
                    <v-list-tile-action>
                        <v-icon v-html="item.icon"></v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title v-text="item.title"></v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
            </v-list>
        </v-navigation-drawer>
        <v-toolbar fixed>
            <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
        </v-toolbar>
        <v-toolbar fixed app :clipped-left="clipped">
            <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>

            <v-toolbar-title v-text="title"></v-toolbar-title>
            <v-spacer></v-spacer>
            <v-btn
                icon
                @click.native.stop="rightDrawer = !rightDrawer"
            >
                <v-icon v-html="rightDrawer ? 'chevron_right' : 'chevron_left'"></v-icon>
            </v-btn>
        </v-toolbar>
        <v-content>
            <v-container fluid>
                <v-slide-y-transition mode="out-in">
                    <router-view></router-view>
                </v-slide-y-transition>
            </v-container>
        </v-content>
        <v-navigation-drawer
            temporary
            right
            v-model="rightDrawer"
            fixed
        >
            <v-list>
                <v-list-tile>
                    <v-list-tile-title>Right panel</v-list-tile-title>
                </v-list-tile>
            </v-list>
        </v-navigation-drawer>
        <v-footer app class="justify-center">
            <span>&copy; 2017</span>
        </v-footer>
    </v-app>
</template>

<script>
    import Meta from 'mixins/meta'

    export default {
        mixins: [Meta],

        data () {
            return {
                clipped: true,
                drawer: true,
                items: [
                    { icon: 'apps', title: 'Welcome', to: '/' },
                    { icon: 'bubble_chart', title: 'Inspire', to: '/inspire' }
                ],
                miniVariant: true,
                rightDrawer: false,
                title: 'Test'
            }
        }
    }
</script>
