  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label   
  movq %rbx, %rdx          #  2     0x5   3      OPC=movq_r64_r64  
  callq .read_zf_into_rbx  #  3     0x8   5      OPC=callq_label   
  xaddb %dl, %bl           #  4     0xd   3      OPC=xaddb_r8_r8   
  setbe %ah                #  5     0x10  3      OPC=setbe_rh      
  retq                     #  6     0x13  1      OPC=retq          
                                                                   
.size target, .-target
