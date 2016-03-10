  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movq $0x7, %rbx                  #  1     0     10     OPC=movq_r64_imm64          
  vpunpckhdq %xmm1, %xmm1, %xmm13  #  2     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovddup %xmm13, %xmm11          #  3     0xe   5      OPC=vmovddup_xmm_xmm        
  xaddw %bx, %bx                   #  4     0x13  4      OPC=xaddw_r16_r16           
  vmovq %xmm11, %rax               #  5     0x17  5      OPC=vmovq_r64_xmm           
  cmovnlew %ax, %bx                #  6     0x1c  4      OPC=cmovnlew_r16_r16        
  retq                             #  7     0x20  1      OPC=retq                    
                                                                                     
.size target, .-target
