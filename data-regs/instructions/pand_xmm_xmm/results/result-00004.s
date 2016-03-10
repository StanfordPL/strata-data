  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP  Bytes  Opcode                   
.target:                              #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm2, %xmm3         #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x4  5      OPC=callq_label          
  xorps %xmm8, %xmm1                  #  3     0x9  4      OPC=xorps_xmm_xmm        
  retq                                #  4     0xd  1      OPC=retq                 
                                                                                    
.size target, .-target
