  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vzeroall                           #  1     0     3      OPC=vzeroall            
  vdivpd %xmm12, %xmm9, %xmm1        #  2     0x3   5      OPC=vdivpd_xmm_xmm_xmm  
  vpmovsxdq %xmm1, %xmm1             #  3     0x8   5      OPC=vpmovsxdq_xmm_xmm   
  callq .move_128_64_xmm1_xmm8_xmm9  #  4     0xd   5      OPC=callq_label         
  vmovshdup %ymm9, %ymm9             #  5     0x12  5      OPC=vmovshdup_ymm_ymm   
  vpmovsxdq %xmm9, %xmm1             #  6     0x17  5      OPC=vpmovsxdq_xmm_xmm   
  retq                               #  7     0x1c  1      OPC=retq                
                                                                                   
.size target, .-target
