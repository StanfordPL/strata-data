  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovsxbd %xmm2, %xmm10               #  1     0     5      OPC=vpmovsxbd_xmm_xmm  
  movdqu %xmm3, %xmm11                  #  2     0x5   5      OPC=movdqu_xmm_xmm     
  callq .move_128_064_xmm2_r8_r9        #  3     0xa   5      OPC=callq_label        
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label        
  callq .move_064_128_r8_r9_xmm1        #  5     0x14  5      OPC=callq_label        
  retq                                  #  6     0x19  1      OPC=retq               
                                                                                     
.size target, .-target
