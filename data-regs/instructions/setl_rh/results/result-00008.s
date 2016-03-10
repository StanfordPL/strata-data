  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_of_into_rbx  #  1     0    5      OPC=callq_label   
  setnge %bh               #  2     0x5  3      OPC=setnge_rh     
  movw %bx, %ax            #  3     0x8  3      OPC=movw_r16_r16  
  retq                     #  4     0xb  1      OPC=retq          
                                                                  
.size target, .-target
