  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm4, %xmm6, %xmm9                   #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklpd %xmm9, %xmm1                           #  4     0xe   5      OPC=unpcklpd_xmm_xmm       
  vandps %xmm10, %xmm5, %xmm9                     #  5     0x13  5      OPC=vandps_xmm_xmm_xmm     
  punpcklqdq %xmm9, %xmm11                        #  6     0x18  5      OPC=punpcklqdq_xmm_xmm     
  movss %xmm11, %xmm1                             #  7     0x1d  5      OPC=movss_xmm_xmm          
  retq                                            #  8     0x22  1      OPC=retq                   
                                                                                                   
.size target, .-target
