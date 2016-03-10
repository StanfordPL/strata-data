  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  movsldup %xmm11, %xmm1               #  2     0x5   5      OPC=movsldup_xmm_xmm       
  vunpcklps %xmm2, %xmm1, %xmm7        #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklpd %xmm7, %xmm1                #  4     0xe   4      OPC=unpcklpd_xmm_xmm       
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
