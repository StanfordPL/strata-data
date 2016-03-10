  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  movzbw %bl, %r9w                    #  1     0    5      OPC=movzbw_r16_r8  
  callq .move_r9b_to_byte_11_of_ymm1  #  2     0x5  5      OPC=callq_label    
  retq                                #  3     0xa  1      OPC=retq           
                                                                              
.size target, .-target
