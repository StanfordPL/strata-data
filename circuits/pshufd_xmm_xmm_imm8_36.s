  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm12, %xmm13, %xmm9      #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  movupd %xmm2, %xmm1                  #  3     0xa   4      OPC=movupd_xmm_xmm         
  unpcklpd %xmm9, %xmm1                #  4     0xe   5      OPC=unpcklpd_xmm_xmm       
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
