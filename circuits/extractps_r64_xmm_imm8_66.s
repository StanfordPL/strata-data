  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  vsqrtps %xmm1, %xmm13                #  1     0     4      OPC=vsqrtps_xmm_xmm      
  vaddsd %xmm1, %xmm13, %xmm11         #  2     0x4   4      OPC=vaddsd_xmm_xmm_xmm   
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label          
  vhsubpd %ymm13, %ymm11, %ymm13       #  4     0xd   5      OPC=vhsubpd_ymm_ymm_ymm  
  vmovd %xmm13, %ebx                   #  5     0x12  4      OPC=vmovd_r32_xmm        
  retq                                 #  6     0x16  1      OPC=retq                 
                                                                                      
.size target, .-target
