<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>
<body>
<header class="header--form-page">
    <nav class="container container--70">
        <ul>
            <li><a href="/" class="btn btn--without-border active">Start</a></li>
            <li><a href="index.html#steps" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="index.html#about-us" class="btn btn--without-border">O nas</a></li>
            <li><a href="index.html#help" class="btn btn--without-border">Fundacje i organizacje</a></li>
            <li><a href="index.html#contact" class="btn btn--without-border">Kontakt</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Oddaj rzeczy, których już nie chcesz<br/>
                <span class="uppercase">potrzebującym</span>
            </h1>

            <div class="slogan--steps">
                <div class="slogan--steps-title">Wystarczą 4 proste kroki:</div>
                <ul class="slogan--steps-boxes">
                    <li>
                        <div><em>1</em><span>Wybierz rzeczy</span></div>
                    </li>
                    <li>
                        <div><em>2</em><span>Spakuj je w worki</span></div>
                    </li>
                    <li>
                        <div><em>3</em><span>Wybierz fundację</span></div>
                    </li>
                    <li>
                        <div><em>4</em><span>Zamów kuriera</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>

<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>

    <div class="form--steps-container">
        <div class="form--steps-counter">Krok <span>1</span>/4</div>

        <form:form method="POST" modelAttribute="donationForm">
            <%--        <form action="form-confirmation.html" method="post">--%>
            <!-- STEP 1: class .active is switching steps -->
            <div data-step="1" class="active">
                <h3>Zaznacz co chcesz oddać:</h3>

                <div class="form-group form-group--checkbox">
                    <c:forEach items="${categories}" var="category">
                        <label>
                            <form:checkbox path="categoryList" value="${category.id}"/>
                            <span class="checkbox"></span>
                            <span class="description">${category.name}</span>
                        </label>

                    </c:forEach>
                </div>

                    <%--            <div class="form-group form-group--checkbox">--%>
                    <%--              <label>--%>
                    <%--                <input--%>
                    <%--                  type="checkbox"--%>
                    <%--                  name="categories"--%>
                    <%--                  value="clothes-to-use"--%>
                    <%--                />--%>
                    <%--                <span class="checkbox"></span>--%>
                    <%--                <span class="description"--%>
                    <%--                  >ubrania, które nadają się do ponownego użycia</span--%>
                    <%--                >--%>
                    <%--              </label>--%>
                    <%--            </div>--%>

                    <%--            <div class="form-group form-group--checkbox">--%>
                    <%--              <label>--%>
                    <%--                <input--%>
                    <%--                  type="checkbox"--%>
                    <%--                  name="categories"--%>
                    <%--                  value="clothes-useless"--%>
                    <%--                />--%>
                    <%--                <span class="checkbox"></span>--%>
                    <%--                <span class="description">ubrania, do wyrzucenia</span>--%>
                    <%--              </label>--%>
                    <%--            </div>--%>

                    <%--            <div class="form-group form-group--checkbox">--%>
                    <%--              <label>--%>
                    <%--                <input type="checkbox" name="categories" value="toys" />--%>
                    <%--                <span class="checkbox"></span>--%>
                    <%--                <span class="description">zabawki</span>--%>
                    <%--              </label>--%>
                    <%--            </div>--%>

                    <%--            <div class="form-group form-group--checkbox">--%>
                    <%--              <label>--%>
                    <%--                <input type="checkbox" name="categories" value="books" />--%>
                    <%--                <span class="checkbox"></span>--%>
                    <%--                <span class="description">książki</span>--%>
                    <%--              </label>--%>
                    <%--            </div>--%>

                    <%--            <div class="form-group form-group--checkbox">--%>
                    <%--              <label>--%>
                    <%--                <input type="checkbox" name="categories" value="other" />--%>
                    <%--                <span class="checkbox"></span>--%>
                    <%--                <span class="description">inne</span>--%>
                    <%--              </label>--%>
                    <%--            </div>--%>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 2 -->
            <div data-step="2">
                <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

                <div class="form-group form-group--inline">
                    <label>
                        Liczba 60l worków:

                        <form:input path="quantity"/>

                            <%--                <input type="number" name="bags" step="1" min="1" />--%>
                    </label>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>


            <!-- STEP 4 -->
            <div data-step="3">
                <h3>Wybierz organizacje, której chcesz pomóc:</h3>

                <div class="form-group form-group--checkbox">

                    <c:forEach items="${institutions}" var="institution">
                        <label>
                            <form:radiobutton path="institution" value="${institution.id}"/>
                            <span class="checkbox radio"></span>
                            <span class="description">
                             <div class="title">${institution.name}</div>
                             <div class="subtitle">${institution.description}</div>
                            </span>
                        </label>

                    </c:forEach>
                        <%--              <label>--%>
                        <%--                <input type="radio" name="organization" value="old" />--%>
                        <%--                <span class="checkbox radio"></span>--%>
                        <%--                <span class="description">--%>
                        <%--                  <div class="title">Fundacja “Bez domu”</div>--%>
                        <%--                  <div class="subtitle">--%>
                        <%--                    Cel i misja: Pomoc dla osób nie posiadających miejsca--%>
                        <%--                    zamieszkania--%>
                        <%--                  </div>--%>
                        <%--                </span>--%>
                        <%--              </label>--%>
                </div>

                    <%--            <div class="form-group form-group--checkbox">--%>
                    <%--              <label>--%>
                    <%--                <input type="radio" name="organization" value="old" />--%>
                    <%--                <span class="checkbox radio"></span>--%>
                    <%--                <span class="description">--%>
                    <%--                  <div class="title">Fundacja “Dla dzieci"</div>--%>
                    <%--                  <div class="subtitle">--%>
                    <%--                    Cel i misja: Pomoc osobom znajdującym się w trudnej sytuacji--%>
                    <%--                    życiowej.--%>
                    <%--                  </div>--%>
                    <%--                </span>--%>
                    <%--              </label>--%>
                    <%--            </div>--%>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 5 -->
            <div data-step="4">
                <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru</h4>
                        <div class="form-group form-group--inline">
                            <spring:bind path="street">
                                <form:input path="street"/>
                            </spring:bind>
                                <%--                  <label> Ulica <input type="text" name="address" /> </label>--%>
                        </div>

                        <div class="form-group form-group--inline">
                            <spring:bind path="city">
                                <form:input path="city"/>
                            </spring:bind>
                                <%--                  <label> Miasto <input type="text" name="city" /> </label>--%>
                        </div>

                        <div class="form-group form-group--inline">
                            <spring:bind path="zipCode">
                                <form:input path="zipCode"/>
                            </spring:bind>
                                <%--                  <label>Kod pocztowy <input type="text" name="postcode" /></label>--%>
                        </div>

                            <%--                <div class="form-group form-group--inline">--%>
                            <%--                  <label>--%>
                            <%--                    Numer telefonu <input type="phone" name="phone" />--%>
                            <%--                  </label>--%>
                            <%--                </div>--%>
                    </div>

                    <div class="form-section--column">
                        <h4>Termin odbioru</h4>
                        <div class="form-group form-group--inline">
                            <spring:bind path="pickUpDate">
                                <form:input type="data" path="pickUpDate"/>
                            </spring:bind>
                                <%--                  <label> Data <input type="date" name="data" /> </label>--%>
                        </div>

                        <div class="form-group form-group--inline">
                            <spring:bind path="pickUpTime">
                                <form:input type="time" path="pickUpTime"/>
                            </spring:bind>
                                <%--                  <label> Godzina <input type="time" name="time" /> </label>--%>
                        </div>

                            <%--                <div class="form-group form-group--inline">--%>
                            <%--                  <label>--%>
                            <%--                    Uwagi dla kuriera--%>
                            <%--                    <textarea name="more_info" rows="5"></textarea>--%>
                            <%--                  </label>--%>
                            <%--                </div>--%>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="button" class="btn next-step">Dalej</button>
                </div>
            </div>

            <!-- STEP 6 -->
            <div data-step="5">
                <h3>Podsumowanie Twojej darowizny</h3>

                <div class="summary">
                    <div class="form-section">
                        <h4>Oddajesz:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span class="summary--text"
                                >4 worki ubrań w dobrym stanie dla dzieci</span
                                >
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span class="summary--text"
                                >Dla fundacji "Mam marzenie" w Warszawie</span
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Adres odbioru:</h4>
                            <ul>
                                <li>Prosta 51</li>
                                <li>Warszawa</li>
                                <li>99-098</li>
                                <li>123 456 789</li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Termin odbioru:</h4>
                            <ul>
                                <li>13/12/2018</li>
                                <li>15:40</li>
                                <li>Brak uwag</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Wstecz</button>
                    <button type="submit" class="btn">Potwierdzam</button>
                </div>
            </div>
            <%--        </form>--%>
        </form:form>
    </div>
</section>

<jsp:include page="/WEB-INF/views/footer.jsp"/>

<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>