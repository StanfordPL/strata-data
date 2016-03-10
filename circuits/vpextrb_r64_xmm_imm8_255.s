  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovsxdq %xmm8, %xmm12                         #  2     0x5   5      OPC=vpmovsxdq_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r9b              #  3     0xa   5      OPC=callq_label        
  vmovmskpd %xmm12, %ebx                          #  4     0xf   5      OPC=vmovmskpd_r32_xmm  
  xchgb %bl, %r9b                                 #  5     0x14  3      OPC=xchgb_r8_r8        
  retq                                            #  6     0x17  1      OPC=retq               
                                                                                               
.size target, .-target
