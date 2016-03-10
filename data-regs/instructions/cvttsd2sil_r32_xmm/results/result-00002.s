  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm1, %xmm1, %xmm8  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vcvttpd2dq %ymm8, %xmm8          #  2     0x4   5      OPC=vcvttpd2dq_xmm_ymm       
  vcvtdq2pd %ymm8, %ymm11          #  3     0x9   5      OPC=vcvtdq2pd_ymm_ymm        
  cvtsd2sil %xmm11, %ebx           #  4     0xe   5      OPC=cvtsd2sil_r32_xmm        
  retq                             #  5     0x13  1      OPC=retq                     
                                                                                      
.size target, .-target
