  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovddup %xmm2, %xmm7       #  1     0    4      OPC=vmovddup_xmm_xmm    
  vmaxpd %ymm7, %ymm7, %ymm5  #  2     0x4  4      OPC=vmaxpd_ymm_ymm_ymm  
  punpckhqdq %xmm5, %xmm1     #  3     0x8  4      OPC=punpckhqdq_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
