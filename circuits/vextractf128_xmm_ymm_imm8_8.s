  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vorpd %ymm1, %ymm1, %ymm11  #  1     0    4      OPC=vorpd_ymm_ymm_ymm   
  vmulsd %xmm1, %xmm1, %xmm1  #  2     0x4  4      OPC=vmulsd_xmm_xmm_xmm  
  movaps %xmm11, %xmm1        #  3     0x8  4      OPC=movaps_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
