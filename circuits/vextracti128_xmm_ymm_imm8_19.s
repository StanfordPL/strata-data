  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmaxpd %xmm11, %xmm11, %xmm6          #  2     0x5   5      OPC=vmaxpd_xmm_xmm_xmm  
  vmovdqa %ymm6, %ymm14                 #  3     0xa   4      OPC=vmovdqa_ymm_ymm     
  vpor %ymm6, %ymm14, %ymm1             #  4     0xe   4      OPC=vpor_ymm_ymm_ymm    
  vmovsd %xmm11, %xmm1, %xmm1           #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
