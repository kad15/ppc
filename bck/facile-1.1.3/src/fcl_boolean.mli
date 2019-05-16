(***********************************************************************)
(*                                                                     *)
(*                           FaCiLe                                    *)
(*                 A Functional Constraint Library                     *)
(*                                                                     *)
(*            Nicolas Barnier, Pascal Brisset, LOG, CENA               *)
(*                                                                     *)
(* Copyright 2004 CENA. All rights reserved. This file is distributed  *)
(* under the terms of the GNU Lesser General Public License.           *)
(***********************************************************************)
val cstr : Fcl_var.Fd.t array -> Fcl_var.Fd.t -> Fcl_cstr.t
(** [cstr bools sum] returns a constraint ensuring that [sum] is equal
    to the sum of the boolean variables of the array [bools]. This constraint
    posts a demon for each variable. *)
val sum : Fcl_var.Fd.t array -> Fcl_var.Fd.t
(** [sum bools] returns the sum (a new variable) and posts the preceding
    constraint. *)
