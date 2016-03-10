  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  movd %ebx, %xmm5                                #  2     0x5   4      OPC=movd_xmm_r32           
  vunpcklps %xmm11, %xmm5, %xmm12                 #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklpd %xmm12, %xmm1                          #  4     0xe   5      OPC=unpcklpd_xmm_xmm       
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
