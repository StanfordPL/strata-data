  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_byte_15_of_ymm1_to_r9b              #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vaddsd %xmm1, %xmm9, %xmm7                      #  3     0xa   4      OPC=vaddsd_xmm_xmm_xmm  
  movmskpd %xmm7, %r15                            #  4     0xe   5      OPC=movmskpd_r64_xmm    
  andnl %r15d, %r15d, %ebx                        #  5     0x13  5      OPC=andnl_r32_r32_r32   
  addb %r9b, %bl                                  #  6     0x18  3      OPC=addb_r8_r8          
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
