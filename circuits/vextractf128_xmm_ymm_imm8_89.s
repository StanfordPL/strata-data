  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  pandn %xmm1, %xmm1                  #  1     0     4      OPC=pandn_xmm_xmm       
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  vmaxsd %xmm9, %xmm9, %xmm15         #  3     0x9   5      OPC=vmaxsd_xmm_xmm_xmm  
  vmovups %xmm15, %xmm1               #  4     0xe   5      OPC=vmovups_xmm_xmm     
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
