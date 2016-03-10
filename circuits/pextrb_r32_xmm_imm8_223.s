  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movmskpd %xmm11, %rbx                           #  2     0x5   5      OPC=movmskpd_r64_xmm  
  hsubpd %xmm11, %xmm1                            #  3     0xa   5      OPC=hsubpd_xmm_xmm    
  callq .move_byte_11_of_ymm1_to_r9b              #  4     0xf   5      OPC=callq_label       
  xaddb %r9b, %bl                                 #  5     0x14  4      OPC=xaddb_r8_r8       
  retq                                            #  6     0x18  1      OPC=retq              
                                                                                              
.size target, .-target
