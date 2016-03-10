  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label       
  divpd %xmm2, %xmm12                  #  2     0x5   5      OPC=divpd_xmm_xmm     
  pmovzxdq %xmm2, %xmm1                #  3     0xa   5      OPC=pmovzxdq_xmm_xmm  
  movlhps %xmm1, %xmm12                #  4     0xf   4      OPC=movlhps_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label       
  retq                                 #  6     0x18  1      OPC=retq              
                                                                                   
.size target, .-target
