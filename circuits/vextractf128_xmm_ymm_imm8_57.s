  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vmovdqu %xmm9, %xmm10               #  2     0x5   5      OPC=vmovdqu_xmm_xmm     
  movups %xmm10, %xmm11               #  3     0xa   4      OPC=movups_xmm_xmm      
  vminss %xmm11, %xmm11, %xmm1        #  4     0xe   5      OPC=vminss_xmm_xmm_xmm  
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
