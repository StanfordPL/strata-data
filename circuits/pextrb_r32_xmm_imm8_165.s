  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode              
.target:                               #        0     0      OPC=<label>         
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  xorw %r15w, %r15w                    #  2     0x5   4      OPC=xorw_r16_r16    
  movdqa %xmm10, %xmm1                 #  3     0x9   5      OPC=movdqa_xmm_xmm  
  callq .read_sf_into_rbx              #  4     0xe   5      OPC=callq_label     
  callq .move_byte_5_of_ymm1_to_r8b    #  5     0x13  5      OPC=callq_label     
  cmoval %ebx, %r8d                    #  6     0x18  4      OPC=cmoval_r32_r32  
  xchgb %bl, %r8b                      #  7     0x1c  3      OPC=xchgb_r8_r8     
  retq                                 #  8     0x1f  1      OPC=retq            
                                                                                 
.size target, .-target
