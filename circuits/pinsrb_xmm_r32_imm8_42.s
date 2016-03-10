  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  minsd %xmm1, %xmm1                  #  1     0    4      OPC=minsd_xmm_xmm  
  movw %bx, %r8w                      #  2     0x4  4      OPC=movw_r16_r16   
  callq .move_r8b_to_byte_10_of_ymm1  #  3     0x8  5      OPC=callq_label    
  retq                                #  4     0xd  1      OPC=retq           
                                                                              
.size target, .-target
