// shakeSort.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include <ctime>

using namespace std;

void cocktailSort(int arr[], int arrSize) {
	int firstIndex = 0; //индекс первого элемента рабочей зоны массива
	int lastIndex = arrSize-1; //индекс последнего элемента рабочей зоны массива

	while (firstIndex < lastIndex) {
		/*проход слева направо*/
		for (int i = firstIndex; i < lastIndex; i++) {
			if (arr[i] > arr[i + 1]) {
				/*Обмен элементов*/
				int tempElement = arr[i];
				arr[i] = arr[i + 1];
				arr[i + 1] = tempElement;
			}
		}
		/*проход справо налево*/
		for (int i = lastIndex; i > firstIndex; i--) {
			if (arr[i] < arr[i - 1]) {
				/*Обмен элементов*/
				int tempElement = arr[i];
				arr[i] = arr[i - 1];
				arr[i - 1] = tempElement;
			}
		}
		firstIndex++;
		lastIndex--;
	}
}

int main()
{
	srand(time(0)); //для правильной работы рандома
	setlocale(LC_ALL, "Russian"); //русский текст в консоли

	const int arrSize = 10;
	int arr[arrSize];

	for (int i = 0; i < arrSize; i++) {
		arr[i] = rand() % 99 + 1;
	}
	cout << "Массив до сортировки:";
	for (int i = 0; i < arrSize; i++) {
		cout << arr[i] << ' ';
	}
	cocktailSort(arr, arrSize);
	cout << endl;
	cout << "Массив после сортировки:";
	for (int i = 0; i < arrSize; i++) {
		cout << arr[i] << ' ';
	}
}

// Запуск программы: CTRL+F5 или меню "Отладка" > "Запуск без отладки"
// Отладка программы: F5 или меню "Отладка" > "Запустить отладку"

// Советы по началу работы 
//   1. В окне обозревателя решений можно добавлять файлы и управлять ими.
//   2. В окне Team Explorer можно подключиться к системе управления версиями.
//   3. В окне "Выходные данные" можно просматривать выходные данные сборки и другие сообщения.
//   4. В окне "Список ошибок" можно просматривать ошибки.
//   5. Последовательно выберите пункты меню "Проект" > "Добавить новый элемент", чтобы создать файлы кода, или "Проект" > "Добавить существующий элемент", чтобы добавить в проект существующие файлы кода.
//   6. Чтобы снова открыть этот проект позже, выберите пункты меню "Файл" > "Открыть" > "Проект" и выберите SLN-файл.
