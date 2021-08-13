let mover = {
    /**
     * Получает и отдает направление от пользователя.
     * @returns {int} Возвращаем направление, введенное пользователем.
     */
    getDirection() {
        // Доступные значения ввода.
        const availableDirections = [1, 2, 3, 4, 6, 7, 8, 9];

        while (true) {
            // Получаем от пользователя направление.
            let direction = parseInt(prompt('Введите число (1, 2, 3, 4, 6, 7, 8  или 9), куда вы хотите переместиться, "Отмена" для выхода.'));
            if (isNaN(direction)) {
                return null;
            }
            // Если направление не одно из доступных, то сообщаем что надо ввести корректные данные
            // и начинаем новую итерацию.
            if (!availableDirections.includes(direction)) {
                alert('Для перемещения необходимо ввести одно из чисел 1, 2, 3, 4, 6, 7, 8  или 9.');
                continue;
            }

            // Если пользователь ввел корректное значение - отдаем его.
            return direction;
        }
    },

    // /**
    //  * проверяет следующую точку
    //  * @params {{x: int, y: int}} Следующая позиция игрока.
    //  * @returns {{x: int, y: int}} Следующая позиция игрока с корректировкой.
    //  */
    // checkWall: function(y, x){
    //     this.x = x;
    //     this.y = y;
    //     if (y === config.colsCount ||
    //             x === config.colsCount ||
    //             y < 0 ||
    //             x < 0) {
    //         nextPosition.x = player.x;
    //         nextPosition.y = player.y;
    //     }
    //     return nextPosition.y, nextPosition.x;
    // },
    //

    /**
     * Отдает следующую точку в которой будет находиться пользователь после движения.
     * @param {int} direction Направление движения игрока.
     * @returns {{x: int, y: int}} Следующая позиция игрока.
     */
    getNextPosition: function (direction) {
        // Следующая точка игрока, в самом начале в точке будут текущие координаты игрока.
        const nextPosition = {
            x: player.x,
            y: player.y,
        };
        // Определяем направление и обновляем местоположение игрока в зависимости от направления.
        switch (direction) {
            case 1:
                nextPosition.x--;
                nextPosition.y++;
                break;
            case 2:
                nextPosition.y++;
                break;
            case 3:
                nextPosition.x++;
                nextPosition.y++;
                break;
            case 4:
                nextPosition.x--;
                break;
            case 6:
                nextPosition.x++;
                break;
            case 7:
                nextPosition.x--;
                nextPosition.y--;
                break;
            case 8:
                nextPosition.y--;
                break;
            case 9:
                nextPosition.x++;
                nextPosition.y--;
                break;
        }
        checkWall(nextPosition.y, nextPosition.x);


        if (nextPosition.y === config.colsCount ||
            nextPosition.x === config.colsCount ||
            nextPosition.y < 0 ||
            nextPosition.x < 0)
        {
            nextPosition.x = player.x;
            nextPosition.y = player.y;
        }

        return nextPosition;
    },
};