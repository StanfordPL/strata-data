  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vmovhlps %xmm9, %xmm9, %xmm5       #  2     0x5   5      OPC=vmovhlps_xmm_xmm_xmm  
  vmovdqu %xmm5, %xmm2               #  3     0xa   4      OPC=vmovdqu_xmm_xmm       
  movapd %xmm2, %xmm1                #  4     0xe   4      OPC=movapd_xmm_xmm        
  retq                               #  5     0x12  1      OPC=retq                  
                                                                                     
.size target, .-target
