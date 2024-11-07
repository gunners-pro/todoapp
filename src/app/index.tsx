import {
  View,
  Text,
  StyleSheet,
  FlatList,
  Dimensions,
  SafeAreaView,
} from 'react-native'
import { data } from '../data'

const { width, height } = Dimensions.get('screen')

export default function Index() {
  const category = data.map((d) => d.category)
  const uniqueCategory = category.filter(
    (value, index) => category.indexOf(value) === index,
  )
  return (
    <SafeAreaView style={styles.container}>
      <Text>Minhas Listas</Text>
      <FlatList
        data={[{ isHeader: true }, ...uniqueCategory]}
        renderItem={({ item }) => {
          if (item.isHeader) {
            return <HeaderComponent />
          } else {
            return (
              <View style={[styles.card, { backgroundColor: '#deebee' }]}>
                <Text>{item.toString()}</Text>
              </View>
            )
          }
        }}
        horizontal={false}
        numColumns={2}
        contentContainerStyle={{ marginHorizontal: 24, paddingBottom: 32 }}
      />
    </SafeAreaView>
  )
}

const HeaderComponent = () => {
  return (
    <View style={[styles.card, { backgroundColor: '#f7e6ca' }]}>
      <Text>Todas as tarefas</Text>
      <Text>127 Items</Text>
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
  },
  card: {
    borderRadius: 16,
    padding: 16,
    margin: 8,
    height: height / 5.5,
    width: width / 2.5,
    alignItems: 'center',
    justifyContent: 'center',
  },
})
