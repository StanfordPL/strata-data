  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpxor %ymm7, %ymm7, %ymm1             #  1     0     4      OPC=vpxor_ymm_ymm_ymm      
  vmovhlps %xmm2, %xmm2, %xmm5          #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm   
  vunpcklpd %ymm5, %ymm2, %ymm10        #  3     0x8   4      OPC=vunpcklpd_ymm_ymm_ymm  
  vpsubq %xmm1, %xmm3, %xmm11           #  4     0xc   4      OPC=vpsubq_xmm_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x10  5      OPC=callq_label            
  retq                                  #  6     0x15  1      OPC=retq                   
                                                                                         
.size target, .-target
