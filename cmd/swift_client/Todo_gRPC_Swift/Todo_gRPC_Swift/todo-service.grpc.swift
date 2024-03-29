//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: todo-service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Dispatch
import Foundation
import SwiftGRPC
import SwiftProtobuf

internal protocol V1_ToDoServiceReadAllCall: ClientCallUnary {}

fileprivate final class V1_ToDoServiceReadAllCallBase: ClientCallUnaryBase<V1_ReadAllRequest, V1_ReadAllResponse>, V1_ToDoServiceReadAllCall {
  override class var method: String { return "/v1.ToDoService/ReadAll" }
}

internal protocol V1_ToDoServiceCreateCall: ClientCallUnary {}

fileprivate final class V1_ToDoServiceCreateCallBase: ClientCallUnaryBase<V1_CreateRequest, V1_CreateResponse>, V1_ToDoServiceCreateCall {
  override class var method: String { return "/v1.ToDoService/Create" }
}

internal protocol V1_ToDoServiceReadCall: ClientCallUnary {}

fileprivate final class V1_ToDoServiceReadCallBase: ClientCallUnaryBase<V1_ReadRequest, V1_ReadResponse>, V1_ToDoServiceReadCall {
  override class var method: String { return "/v1.ToDoService/Read" }
}

internal protocol V1_ToDoServiceUpdateCall: ClientCallUnary {}

fileprivate final class V1_ToDoServiceUpdateCallBase: ClientCallUnaryBase<V1_UpdateRequest, V1_UpdateResponse>, V1_ToDoServiceUpdateCall {
  override class var method: String { return "/v1.ToDoService/Update" }
}

internal protocol V1_ToDoServiceDeleteCall: ClientCallUnary {}

fileprivate final class V1_ToDoServiceDeleteCallBase: ClientCallUnaryBase<V1_DeleteRequest, V1_DeleteResponse>, V1_ToDoServiceDeleteCall {
  override class var method: String { return "/v1.ToDoService/Delete" }
}


/// Instantiate V1_ToDoServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol V1_ToDoServiceService: ServiceClient {
  /// Synchronous. Unary.
  func readAll(_ request: V1_ReadAllRequest, metadata customMetadata: Metadata) throws -> V1_ReadAllResponse
  /// Asynchronous. Unary.
  @discardableResult
  func readAll(_ request: V1_ReadAllRequest, metadata customMetadata: Metadata, completion: @escaping (V1_ReadAllResponse?, CallResult) -> Void) throws -> V1_ToDoServiceReadAllCall

  /// Synchronous. Unary.
  func create(_ request: V1_CreateRequest, metadata customMetadata: Metadata) throws -> V1_CreateResponse
  /// Asynchronous. Unary.
  @discardableResult
  func create(_ request: V1_CreateRequest, metadata customMetadata: Metadata, completion: @escaping (V1_CreateResponse?, CallResult) -> Void) throws -> V1_ToDoServiceCreateCall

  /// Synchronous. Unary.
  func read(_ request: V1_ReadRequest, metadata customMetadata: Metadata) throws -> V1_ReadResponse
  /// Asynchronous. Unary.
  @discardableResult
  func read(_ request: V1_ReadRequest, metadata customMetadata: Metadata, completion: @escaping (V1_ReadResponse?, CallResult) -> Void) throws -> V1_ToDoServiceReadCall

  /// Synchronous. Unary.
  func update(_ request: V1_UpdateRequest, metadata customMetadata: Metadata) throws -> V1_UpdateResponse
  /// Asynchronous. Unary.
  @discardableResult
  func update(_ request: V1_UpdateRequest, metadata customMetadata: Metadata, completion: @escaping (V1_UpdateResponse?, CallResult) -> Void) throws -> V1_ToDoServiceUpdateCall

  /// Synchronous. Unary.
  func delete(_ request: V1_DeleteRequest, metadata customMetadata: Metadata) throws -> V1_DeleteResponse
  /// Asynchronous. Unary.
  @discardableResult
  func delete(_ request: V1_DeleteRequest, metadata customMetadata: Metadata, completion: @escaping (V1_DeleteResponse?, CallResult) -> Void) throws -> V1_ToDoServiceDeleteCall

}

internal extension V1_ToDoServiceService {
  /// Synchronous. Unary.
  func readAll(_ request: V1_ReadAllRequest) throws -> V1_ReadAllResponse {
    return try self.readAll(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func readAll(_ request: V1_ReadAllRequest, completion: @escaping (V1_ReadAllResponse?, CallResult) -> Void) throws -> V1_ToDoServiceReadAllCall {
    return try self.readAll(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func create(_ request: V1_CreateRequest) throws -> V1_CreateResponse {
    return try self.create(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func create(_ request: V1_CreateRequest, completion: @escaping (V1_CreateResponse?, CallResult) -> Void) throws -> V1_ToDoServiceCreateCall {
    return try self.create(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func read(_ request: V1_ReadRequest) throws -> V1_ReadResponse {
    return try self.read(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func read(_ request: V1_ReadRequest, completion: @escaping (V1_ReadResponse?, CallResult) -> Void) throws -> V1_ToDoServiceReadCall {
    return try self.read(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func update(_ request: V1_UpdateRequest) throws -> V1_UpdateResponse {
    return try self.update(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func update(_ request: V1_UpdateRequest, completion: @escaping (V1_UpdateResponse?, CallResult) -> Void) throws -> V1_ToDoServiceUpdateCall {
    return try self.update(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func delete(_ request: V1_DeleteRequest) throws -> V1_DeleteResponse {
    return try self.delete(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func delete(_ request: V1_DeleteRequest, completion: @escaping (V1_DeleteResponse?, CallResult) -> Void) throws -> V1_ToDoServiceDeleteCall {
    return try self.delete(request, metadata: self.metadata, completion: completion)
  }

}

internal final class V1_ToDoServiceServiceClient: ServiceClientBase, V1_ToDoServiceService {
  /// Synchronous. Unary.
  internal func readAll(_ request: V1_ReadAllRequest, metadata customMetadata: Metadata) throws -> V1_ReadAllResponse {
    return try V1_ToDoServiceReadAllCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func readAll(_ request: V1_ReadAllRequest, metadata customMetadata: Metadata, completion: @escaping (V1_ReadAllResponse?, CallResult) -> Void) throws -> V1_ToDoServiceReadAllCall {
    return try V1_ToDoServiceReadAllCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func create(_ request: V1_CreateRequest, metadata customMetadata: Metadata) throws -> V1_CreateResponse {
    return try V1_ToDoServiceCreateCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func create(_ request: V1_CreateRequest, metadata customMetadata: Metadata, completion: @escaping (V1_CreateResponse?, CallResult) -> Void) throws -> V1_ToDoServiceCreateCall {
    return try V1_ToDoServiceCreateCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func read(_ request: V1_ReadRequest, metadata customMetadata: Metadata) throws -> V1_ReadResponse {
    return try V1_ToDoServiceReadCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func read(_ request: V1_ReadRequest, metadata customMetadata: Metadata, completion: @escaping (V1_ReadResponse?, CallResult) -> Void) throws -> V1_ToDoServiceReadCall {
    return try V1_ToDoServiceReadCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func update(_ request: V1_UpdateRequest, metadata customMetadata: Metadata) throws -> V1_UpdateResponse {
    return try V1_ToDoServiceUpdateCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func update(_ request: V1_UpdateRequest, metadata customMetadata: Metadata, completion: @escaping (V1_UpdateResponse?, CallResult) -> Void) throws -> V1_ToDoServiceUpdateCall {
    return try V1_ToDoServiceUpdateCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func delete(_ request: V1_DeleteRequest, metadata customMetadata: Metadata) throws -> V1_DeleteResponse {
    return try V1_ToDoServiceDeleteCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func delete(_ request: V1_DeleteRequest, metadata customMetadata: Metadata, completion: @escaping (V1_DeleteResponse?, CallResult) -> Void) throws -> V1_ToDoServiceDeleteCall {
    return try V1_ToDoServiceDeleteCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

