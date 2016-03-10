  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  xorb %bh, %bh                      #  1     0    2      OPC=xorb_rh_rh   
  callq .read_of_into_rbx            #  2     0x2  5      OPC=callq_label  
  callq .move_byte_3_of_ymm1_to_r8b  #  3     0x7  5      OPC=callq_label  
  adcb %r8b, %bl                     #  4     0xc  3      OPC=adcb_r8_r8   
  retq                               #  5     0xf  1      OPC=retq         
                                                                           
.size target, .-target
