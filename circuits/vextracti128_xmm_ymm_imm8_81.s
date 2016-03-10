  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  callq .move_128_256_xmm10_xmm11_ymm2  #  2     0x5   5      OPC=callq_label               
  vfnmadd132sd %xmm11, %xmm2, %xmm1     #  3     0xa   5      OPC=vfnmadd132sd_xmm_xmm_xmm  
  movdqu %xmm11, %xmm1                  #  4     0xf   5      OPC=movdqu_xmm_xmm            
  retq                                  #  5     0x14  1      OPC=retq                      
                                                                                            
.size target, .-target
