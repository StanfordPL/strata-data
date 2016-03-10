  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %xmm9          #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  vpandn %ymm9, %ymm9, %ymm0         #  2     0x5   5      OPC=vpandn_ymm_ymm_ymm    
  vmovups %xmm0, %xmm7               #  3     0xa   4      OPC=vmovups_xmm_xmm       
  movq %xmm7, %rbx                   #  4     0xe   5      OPC=movq_r64_xmm          
  callq .move_byte_6_of_ymm1_to_r8b  #  5     0x13  5      OPC=callq_label           
  xchgb %bl, %r8b                    #  6     0x18  3      OPC=xchgb_r8_r8           
  retq                               #  7     0x1b  1      OPC=retq                  
                                                                                     
.size target, .-target
