  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm3                        #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  callq .move_128_064_xmm3_r10_r11              #  3     0xa   5      OPC=callq_label        
  callq .move_byte_4_of_ymm1_to_r8b             #  4     0xf   5      OPC=callq_label        
  andb %r8b, %r10b                              #  5     0x14  3      OPC=andb_r8_r8         
  movmskpd %xmm5, %rbx                          #  6     0x17  4      OPC=movmskpd_r64_xmm   
  adcb %r8b, %bl                                #  7     0x1b  3      OPC=adcb_r8_r8         
  retq                                          #  8     0x1e  1      OPC=retq               
                                                                                             
.size target, .-target
