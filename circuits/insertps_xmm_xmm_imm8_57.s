  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm1, %xmm5, %xmm7                 #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  movhlps %xmm7, %xmm1                          #  3     0x9   3      OPC=movhlps_xmm_xmm        
  punpcklqdq %xmm6, %xmm1                       #  4     0xc   4      OPC=punpcklqdq_xmm_xmm     
  retq                                          #  5     0x10  1      OPC=retq                   
                                                                                                 
.size target, .-target
