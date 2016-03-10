  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movmskpd %xmm5, %rbx                          #  2     0x5   4      OPC=movmskpd_r64_xmm  
  callq .move_byte_13_of_ymm1_to_r9b            #  3     0x9   5      OPC=callq_label       
  movb %r9b, %bl                                #  4     0xe   3      OPC=movb_r8_r8        
  retq                                          #  5     0x11  1      OPC=retq              
                                                                                            
.size target, .-target
