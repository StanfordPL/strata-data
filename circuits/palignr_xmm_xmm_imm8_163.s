  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode             
.target:                               #        0     0      OPC=<label>        
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  callq .move_byte_0_of_ymm1_to_r9b    #  2     0x5   5      OPC=callq_label    
  maxpd %xmm10, %xmm1                  #  3     0xa   5      OPC=maxpd_xmm_xmm  
  callq .move_r9b_to_byte_8_of_ymm1    #  4     0xf   5      OPC=callq_label    
  pandn %xmm1, %xmm1                   #  5     0x14  4      OPC=pandn_xmm_xmm  
  retq                                 #  6     0x18  1      OPC=retq           
                                                                                
.size target, .-target
