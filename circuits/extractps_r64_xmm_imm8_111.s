  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                     
.target:                                        #        0    0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label            
  vunpcklps %xmm4, %xmm7, %xmm5                 #  2     0x5  4      OPC=vunpcklps_xmm_xmm_xmm  
  movd %xmm5, %ebx                              #  3     0x9  4      OPC=movd_r32_xmm           
  retq                                          #  4     0xd  1      OPC=retq                   
                                                                                                
.size target, .-target
