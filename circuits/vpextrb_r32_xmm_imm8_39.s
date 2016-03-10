  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vmovlhps %xmm1, %xmm1, %xmm1        #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label           
  movq $0x0, %rbx                     #  3     0x9   10     OPC=movq_r64_imm64        
  xchgb %bl, %r8b                     #  4     0x13  3      OPC=xchgb_r8_r8           
  retq                                #  5     0x16  1      OPC=retq                  
                                                                                      
.size target, .-target
