  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vmovsldup %xmm2, %xmm7               #  1     0     4      OPC=vmovsldup_xmm_xmm  
  unpckhps %xmm7, %xmm2                #  2     0x4   3      OPC=unpckhps_xmm_xmm   
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x7   5      OPC=callq_label        
  vmovupd %ymm7, %ymm10                #  4     0xc   4      OPC=vmovupd_ymm_ymm    
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x10  5      OPC=callq_label        
  retq                                 #  6     0x15  1      OPC=retq               
                                                                                    
.size target, .-target
