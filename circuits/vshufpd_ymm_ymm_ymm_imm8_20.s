  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovddup %ymm3, %ymm6            #  1     0     4      OPC=vmovddup_ymm_ymm         
  vmovups %xmm2, %xmm15            #  2     0x4   4      OPC=vmovups_xmm_xmm          
  vorpd %xmm2, %xmm15, %xmm13      #  3     0x8   4      OPC=vorpd_xmm_xmm_xmm        
  movddup %xmm13, %xmm2            #  4     0xc   5      OPC=movddup_xmm_xmm          
  vpunpckhqdq %ymm6, %ymm2, %ymm1  #  5     0x11  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
