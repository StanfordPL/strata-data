  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm12_xmm13           #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm6, %xmm5, %xmm14                #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  movshdup %xmm13, %xmm1                        #  4     0xe   5      OPC=movshdup_xmm_xmm       
  punpcklqdq %xmm14, %xmm1                      #  5     0x13  5      OPC=punpcklqdq_xmm_xmm     
  retq                                          #  6     0x18  1      OPC=retq                   
                                                                                                 
.size target, .-target
