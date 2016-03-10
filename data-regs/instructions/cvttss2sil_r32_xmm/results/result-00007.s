  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vmovaps %xmm1, %xmm12         #  1     0     4      OPC=vmovaps_xmm_xmm       
  vcvttps2dq %ymm12, %ymm4      #  2     0x4   5      OPC=vcvttps2dq_ymm_ymm    
  vmovlhps %xmm4, %xmm4, %xmm7  #  3     0x9   4      OPC=vmovlhps_xmm_xmm_xmm  
  movd %xmm7, %ebx              #  4     0xd   4      OPC=movd_r32_xmm          
  retq                          #  5     0x11  1      OPC=retq                  
                                                                                
.size target, .-target
