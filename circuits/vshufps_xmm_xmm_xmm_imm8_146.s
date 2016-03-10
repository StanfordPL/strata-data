  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm10, %xmm6           #  2     0x5   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm3, %xmm6, %xmm5       #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm5, %xmm3, %xmm4        #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm   
  vmovss %xmm11, %xmm4, %xmm1          #  5     0x12  5      OPC=vmovss_xmm_xmm_xmm      
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
