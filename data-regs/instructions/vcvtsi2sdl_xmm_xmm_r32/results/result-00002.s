  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmulsd %xmm2, %xmm2, %xmm6  #  1     0     4      OPC=vmulsd_xmm_xmm_xmm  
  vmovd %ebx, %xmm2           #  2     0x4   4      OPC=vmovd_xmm_r32       
  vcvtdq2pd %ymm2, %ymm1      #  3     0x8   4      OPC=vcvtdq2pd_ymm_ymm   
  vmovsd %xmm1, %xmm6, %xmm1  #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
