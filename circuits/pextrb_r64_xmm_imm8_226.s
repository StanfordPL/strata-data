  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm13         #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  orps %xmm13, %xmm1                 #  2     0x5   4      OPC=orps_xmm_xmm          
  movq $0x3, %rbx                    #  3     0x9   10     OPC=movq_r64_imm64        
  callq .move_byte_2_of_ymm1_to_r9b  #  4     0x13  5      OPC=callq_label           
  xchgb %r9b, %bl                    #  5     0x18  3      OPC=xchgb_r8_r8           
  retq                               #  6     0x1b  1      OPC=retq                  
                                                                                     
.size target, .-target
