  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovd %ebx, %xmm7        #  1     0    4      OPC=vmovd_xmm_r32      
  vcvtdq2ps %ymm7, %ymm15  #  2     0x4  4      OPC=vcvtdq2ps_ymm_ymm  
  movss %xmm15, %xmm1      #  3     0x8  5      OPC=movss_xmm_xmm      
  retq                     #  4     0xd  1      OPC=retq               
                                                                       
.size target, .-target
