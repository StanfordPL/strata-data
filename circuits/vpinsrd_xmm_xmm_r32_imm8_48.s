  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                      
.target:                         #        0     0      OPC=<label>                 
  vcvtsi2ssl %ebx, %xmm2, %xmm6  #  1     0     4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  vmovupd %ymm6, %ymm1           #  2     0x4   4      OPC=vmovupd_ymm_ymm         
  movd %ebx, %xmm12              #  3     0x8   5      OPC=movd_xmm_r32            
  vmovss %xmm12, %xmm1, %xmm1    #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm      
  retq                           #  5     0x12  1      OPC=retq                    
                                                                                   
.size target, .-target
