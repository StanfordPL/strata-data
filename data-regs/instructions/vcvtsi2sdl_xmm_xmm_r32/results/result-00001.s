  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovd %ebx, %xmm8            #  1     0     4      OPC=vmovd_xmm_r32       
  vcvtdq2pd %ymm8, %ymm11      #  2     0x4   5      OPC=vcvtdq2pd_ymm_ymm   
  movq %xmm11, %xmm14          #  3     0x9   5      OPC=movq_xmm_xmm        
  vmovsd %xmm14, %xmm2, %xmm1  #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  5     0x13  1      OPC=retq                
                                                                             
.size target, .-target
