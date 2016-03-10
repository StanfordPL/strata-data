  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovsldup %xmm2, %xmm4                          #  2     0x5   4      OPC=vmovsldup_xmm_xmm      
  vunpcklps %xmm10, %xmm9, %xmm0                  #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  movdqa %xmm0, %xmm1                             #  4     0xe   4      OPC=movdqa_xmm_xmm         
  movlhps %xmm4, %xmm1                            #  5     0x12  3      OPC=movlhps_xmm_xmm        
  retq                                            #  6     0x15  1      OPC=retq                   
                                                                                                   
.size target, .-target
