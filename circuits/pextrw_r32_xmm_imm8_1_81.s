  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovzxwq %xmm1, %ymm7          #  1     0     5      OPC=vpmovzxwq_ymm_xmm      
  vunpckhpd %ymm7, %ymm7, %ymm12  #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movq $0x3, %rbx                 #  3     0x9   10     OPC=movq_r64_imm64         
  vmovq %xmm12, %rdx              #  4     0x13  5      OPC=vmovq_r64_xmm          
  negq %rbx                       #  5     0x18  3      OPC=negq_r64               
  cmovlel %edx, %ebx              #  6     0x1b  3      OPC=cmovlel_r32_r32        
  retq                            #  7     0x1e  1      OPC=retq                   
                                                                                   
.size target, .-target
