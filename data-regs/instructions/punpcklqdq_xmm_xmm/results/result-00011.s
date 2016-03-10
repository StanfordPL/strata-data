  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                
.target:                             #        0    0      OPC=<label>           
  xorb %r8b, %r8b                    #  1     0    3      OPC=xorb_r8_r8        
  callq .move_r8b_to_byte_9_of_ymm1  #  2     0x3  5      OPC=callq_label       
  unpcklpd %xmm2, %xmm1              #  3     0x8  4      OPC=unpcklpd_xmm_xmm  
  retq                               #  4     0xc  1      OPC=retq              
                                                                                
.size target, .-target
