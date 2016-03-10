  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastb %xmm2, %xmm7      #  1     0     5      OPC=vpbroadcastb_xmm_xmm   
  vmovq %rbx, %xmm3              #  2     0x5   5      OPC=vmovq_xmm_r64          
  vmovhlps %xmm2, %xmm7, %xmm6   #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm   
  vunpcklpd %xmm6, %xmm3, %xmm1  #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
