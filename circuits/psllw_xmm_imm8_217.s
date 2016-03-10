  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vpxor %xmm1, %xmm1, %xmm5      #  1     0     4      OPC=vpxor_xmm_xmm_xmm    
  vcvtdq2ps %ymm5, %ymm13        #  2     0x4   4      OPC=vcvtdq2ps_ymm_ymm    
  vandnpd %ymm13, %ymm13, %ymm8  #  3     0x8   5      OPC=vandnpd_ymm_ymm_ymm  
  vmovupd %xmm8, %xmm7           #  4     0xd   5      OPC=vmovupd_xmm_xmm      
  movddup %xmm7, %xmm1           #  5     0x12  4      OPC=movddup_xmm_xmm      
  retq                           #  6     0x16  1      OPC=retq                 
                                                                                
.size target, .-target
