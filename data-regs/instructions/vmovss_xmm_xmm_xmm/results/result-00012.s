  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vunpcklpd %xmm3, %xmm3, %xmm1       #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_byte_17_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label            
  movss %xmm1, %xmm2                  #  3     0x9   4      OPC=movss_xmm_xmm          
  vmovups %xmm2, %xmm1                #  4     0xd   4      OPC=vmovups_xmm_xmm        
  callq .move_r8b_to_byte_21_of_ymm1  #  5     0x11  5      OPC=callq_label            
  retq                                #  6     0x16  1      OPC=retq                   
                                                                                       
.size target, .-target
