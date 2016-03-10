  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovd %ebx, %xmm6             #  1     0     4      OPC=vmovd_xmm_r32       
  vcvtdq2ps %ymm6, %ymm12       #  2     0x4   4      OPC=vcvtdq2ps_ymm_ymm   
  vmovss %xmm12, %xmm1, %xmm12  #  3     0x8   5      OPC=vmovss_xmm_xmm_xmm  
  movdqa %xmm12, %xmm1          #  4     0xd   5      OPC=movdqa_xmm_xmm      
  retq                          #  5     0x12  1      OPC=retq                
                                                                              
.size target, .-target
