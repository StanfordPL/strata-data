  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  movdqu %xmm8, %xmm5                #  2     0x5   5      OPC=movdqu_xmm_xmm           
  vpunpcklqdq %xmm1, %xmm5, %xmm7    #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movq $0x20, %rbx                   #  4     0xe   10     OPC=movq_r64_imm64           
  vmovd %xmm7, %r9d                  #  5     0x18  5      OPC=vmovd_r32_xmm            
  callq .move_byte_0_of_ymm1_to_r9b  #  6     0x1d  5      OPC=callq_label              
  xaddw %bx, %r9w                    #  7     0x22  5      OPC=xaddw_r16_r16            
  retq                               #  8     0x27  1      OPC=retq                     
                                                                                        
.size target, .-target
