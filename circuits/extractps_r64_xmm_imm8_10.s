  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  movq $0x0, %r9                     #  1     0     10     OPC=movq_r64_imm64           
  callq .move_r9b_to_byte_5_of_ymm1  #  2     0xa   5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm1, %xmm15   #  3     0xf   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movdqa %xmm15, %xmm13              #  4     0x13  5      OPC=movdqa_xmm_xmm           
  vmovd %xmm13, %ebx                 #  5     0x18  4      OPC=vmovd_r32_xmm            
  retq                               #  6     0x1c  1      OPC=retq                     
                                                                                        
.size target, .-target
