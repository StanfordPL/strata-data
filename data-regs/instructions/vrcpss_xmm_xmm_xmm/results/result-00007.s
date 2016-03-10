  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  rcpss %xmm3, %xmm2                  #  1     0     4      OPC=rcpss_xmm_xmm    
  vmovaps %xmm2, %xmm1                #  2     0x4   4      OPC=vmovaps_xmm_xmm  
  callq .move_byte_29_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label      
  xaddb %r8b, %r8b                    #  4     0xd   4      OPC=xaddb_r8_r8      
  callq .move_r8b_to_byte_22_of_ymm1  #  5     0x11  5      OPC=callq_label      
  retq                                #  6     0x16  1      OPC=retq             
                                                                                 
.size target, .-target
