  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_of_into_rbx  #  1     0    5      OPC=callq_label     
  xaddb %bh, %bl           #  2     0x5  3      OPC=xaddb_r8_rh     
  movzwq %bx, %rax         #  3     0x8  4      OPC=movzwq_r64_r16  
  retq                     #  4     0xc  1      OPC=retq            
                                                                    
.size target, .-target
