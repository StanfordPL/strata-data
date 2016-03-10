  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vorps %xmm8, %xmm8, %xmm1          #  2     0x5   5      OPC=vorps_xmm_xmm_xmm   
  vminss %xmm1, %xmm2, %xmm10        #  3     0xa   4      OPC=vminss_xmm_xmm_xmm  
  addsubps %xmm3, %xmm10             #  4     0xe   5      OPC=addsubps_xmm_xmm    
  movupd %xmm10, %xmm1               #  5     0x13  5      OPC=movupd_xmm_xmm      
  retq                               #  6     0x18  1      OPC=retq                
                                                                                   
.size target, .-target
