  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  callq .move_256_128_ymm1_xmm8_xmm9    #  1     0     5      OPC=callq_label               
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label               
  vfnmadd132ps %xmm13, %xmm12, %xmm1    #  3     0xa   5      OPC=vfnmadd132ps_xmm_xmm_xmm  
  movdqu %xmm9, %xmm1                   #  4     0xf   5      OPC=movdqu_xmm_xmm            
  retq                                  #  5     0x14  1      OPC=retq                      
                                                                                            
.size target, .-target
