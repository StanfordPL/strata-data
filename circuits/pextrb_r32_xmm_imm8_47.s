  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vfnmsub213ss %xmm7, %xmm5, %xmm1              #  2     0x5   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  movq $0x3, %rbx                               #  3     0xa   10     OPC=movq_r64_imm64            
  callq .move_byte_15_of_ymm1_to_r8b            #  4     0x14  5      OPC=callq_label               
  xchgb %r8b, %bl                               #  5     0x19  3      OPC=xchgb_r8_r8               
  retq                                          #  6     0x1c  1      OPC=retq                      
                                                                                                    
.size target, .-target
