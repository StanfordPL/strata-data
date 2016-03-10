  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  vmovq %xmm1, %xmm2       #  1     0     4      OPC=vmovq_xmm_xmm       
  vcvttpd2dq %ymm2, %xmm9  #  2     0x4   4      OPC=vcvttpd2dq_xmm_ymm  
  vcvtdq2pd %ymm9, %ymm11  #  3     0x8   5      OPC=vcvtdq2pd_ymm_ymm   
  cvtsd2sil %xmm11, %ebx   #  4     0xd   5      OPC=cvtsd2sil_r32_xmm   
  retq                     #  5     0x12  1      OPC=retq                
                                                                         
.size target, .-target
