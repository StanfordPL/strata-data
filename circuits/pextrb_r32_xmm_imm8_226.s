  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movmskpd %xmm7, %ebx                          #  2     0x5   4      OPC=movmskpd_r32_xmm  
  negw %bx                                      #  3     0x9   3      OPC=negw_r16          
  callq .move_byte_2_of_ymm1_to_r8b             #  4     0xc   5      OPC=callq_label       
  addb %r8b, %bl                                #  5     0x11  3      OPC=addb_r8_r8        
  retq                                          #  6     0x14  1      OPC=retq              
                                                                                            
.size target, .-target
