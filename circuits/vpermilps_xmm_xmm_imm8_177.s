  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vmovsldup %xmm2, %xmm3                #  1     0     4      OPC=vmovsldup_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  vmovshdup %xmm2, %xmm1                #  3     0x9   4      OPC=vmovshdup_xmm_xmm  
  movss %xmm1, %xmm3                    #  4     0xd   4      OPC=movss_xmm_xmm      
  unpckhps %xmm10, %xmm1                #  5     0x11  4      OPC=unpckhps_xmm_xmm   
  movsd %xmm3, %xmm1                    #  6     0x15  4      OPC=movsd_xmm_xmm      
  retq                                  #  7     0x19  1      OPC=retq               
                                                                                     
.size target, .-target
