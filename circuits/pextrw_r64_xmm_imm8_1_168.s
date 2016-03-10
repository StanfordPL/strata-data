  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movq $0x7, %rbx         #  1     0     10     OPC=movq_r64_imm64     
  vpmovsxwq %xmm1, %ymm2  #  2     0xa   5      OPC=vpmovsxwq_ymm_xmm  
  movd %xmm2, %edi        #  3     0xf   4      OPC=movd_r32_xmm       
  movw %di, %bx           #  4     0x13  3      OPC=movw_r16_r16       
  retq                    #  5     0x16  1      OPC=retq               
                                                                       
.size target, .-target
