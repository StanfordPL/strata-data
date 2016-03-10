  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vunpckhpd %xmm3, %xmm3, %xmm1        #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  movss %xmm10, %xmm11                 #  3     0x9   5      OPC=movss_xmm_xmm          
  callq .move_64_128_xmm10_xmm11_xmm3  #  4     0xe   5      OPC=callq_label            
  vmovsldup %xmm1, %xmm4               #  5     0x13  4      OPC=vmovsldup_xmm_xmm      
  vunpckhpd %xmm4, %xmm3, %xmm1        #  6     0x17  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                                 #  7     0x1b  1      OPC=retq                   
                                                                                        
.size target, .-target
