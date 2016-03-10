  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  callq .move_64_128_xmm10_xmm11_xmm1  #  2     0x5   5      OPC=callq_label               
  vfnmsub132ps %xmm11, %xmm2, %xmm1    #  3     0xa   5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  vmovd %ebx, %xmm14                   #  4     0xf   4      OPC=vmovd_xmm_r32             
  vunpcklps %xmm14, %xmm11, %xmm11     #  5     0x13  5      OPC=vunpcklps_xmm_xmm_xmm     
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label               
  retq                                 #  7     0x1d  1      OPC=retq                      
                                                                                           
.size target, .-target
