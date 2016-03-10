  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label     
  xchgb %ah, %bl           #  2     0x5   2      OPC=xchgb_r8_rh     
  xaddb %ah, %bl           #  3     0x7   3      OPC=xaddb_r8_rh     
  movzwl %bx, %ecx         #  4     0xa   3      OPC=movzwl_r32_r16  
  xaddb %cl, %ah           #  5     0xd   3      OPC=xaddb_rh_r8     
  rolb $0x1, %cl           #  6     0x10  2      OPC=rolb_r8_one     
  retq                     #  7     0x12  1      OPC=retq            
                                                                     
.size target, .-target
