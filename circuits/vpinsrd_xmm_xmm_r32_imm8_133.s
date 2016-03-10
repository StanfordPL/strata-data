  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmovdqa %xmm2, %xmm1                          #  1     0     4      OPC=vmovdqa_xmm_xmm        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  vunpcklps %xmm7, %xmm2, %xmm4                 #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovd %ebx, %xmm5                             #  4     0xd   4      OPC=vmovd_xmm_r32          
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
