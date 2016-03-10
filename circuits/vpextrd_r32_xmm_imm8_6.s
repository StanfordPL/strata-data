  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vcvtdq2pd %xmm1, %xmm11       #  1     0     4      OPC=vcvtdq2pd_xmm_xmm     
  vaddps %xmm11, %xmm1, %xmm5   #  2     0x4   5      OPC=vaddps_xmm_xmm_xmm    
  vmovhlps %xmm1, %xmm5, %xmm4  #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  movd %xmm4, %ebx              #  4     0xd   4      OPC=movd_r32_xmm          
  retq                          #  5     0x11  1      OPC=retq                  
                                                                                
.size target, .-target
