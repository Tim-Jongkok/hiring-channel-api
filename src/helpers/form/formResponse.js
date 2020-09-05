/** @format */

const formResponse = {
  success: (res, data) => {
    const formResponObj = {
      success: true,
      status: 200,
      data: data,
    };
    res.json(formResponObj);
  },

  error: (res, error) => {
    const formResponObj = {
      success: false,
      status: 500,
      error: error,
    };
    res.json(formResponObj);
  },
  pagination: ({ query }, res, data) => {
    const page = Number(query.page);
    const limit = Number(query.limit);
    const type_name = query.type_name;
    const order = query.order;
    if (
      query.search === undefined ||
      query.order === undefined ||
      query.sort_by === undefined
    ) {
      const prevPage =
        page === 1
          ? ""
          : `/?type_name=${type_name}&page=${page - 1}&limit=${limit}`;
      const nextPage =
        data.length < limit
          ? ""
          : `/?type_name=${type_name}&page=${page + 1}&limit=${limit}`;
      const responseObj = {
        success: true,
        status: 200,
        data,
        pageInfo: {
          currentPage: query.page,
          limit: query.limit,
          prevPage,
          nextPage,
        },
      };
      res.json(responseObj);
    } else {
      const prevPage =
        page === 1
          ? ""
          : `/?type_name=${type_name}&search=${query.search}&order=${
              query.order
            }&sort_by=${query.sort_by}&page=${page - 1}&limit=${limit}`;
      const nextPage =
        data.length < limit
          ? ""
          : `/?type_name=${type_name}&search=${query.search}&order=${
              query.order
            }&sort_by=${query.sort_by}&page=${page + 1}&limit=${limit}`;
      const responseObj = {
        success: true,
        status: 200,
        data,
        pageInfo: {
          currentPage: query.page,
          limit: query.limit,
          prevPage,
          nextPage,
        },
      };
      res.json(responseObj);
    }
  },
  // if (
  // query.search === undefined ||
  // query.order === undefined ||
  // query.sort_bay === undefined
  // ) {
  // const page = Number(query.page);
  // const limit = Number(query.limit);
  // const prevPage =
  // page === 1 ? "" : `/user?page=${page - 1}&limit=${limit}`;
  // const nextPage =
  // data.length < limit ? "" : `/user?page=${page + 1}&limit=${limit}`;
  // const responseObj = {
  // success: true,
  // status: 200,
  // data,
  // pageInfo: {
  // currentPage: query.page,
  // limit: query.limit,
  // prevPage,
  // nextPage,
  // },
  // };
  // res.json(responseObj);
  // } else {
  // const page = Number(query.page);
  // const limit = Number(query.limit);
  // const prevPage =
  // page === 1
  // ? ""
  // : `/user?search=${query.search}&order=${query.order}&sort_bay=${
  // query.sort_bay
  // }&page=${page - 1}&limit=${limit}`;
  // const nextPage =
  // data.length < limit
  // ? ""
  // : `/user?search=${query.search}&order=${query.order}&sort_bay=${
  // query.sort_bay
  // }&page=${page + 1}&limit=${limit}`;
  // const responseObj = {
  // success: true,
  // status: 200,
  // data,
  // pageInfo: {
  // currentPage: query.page,
  // limit: query.limit,
  // prevPage,
  // nextPage,
  // },
  // };
  // res.json(responseObj);
  // }
};

module.exports = formResponse;
