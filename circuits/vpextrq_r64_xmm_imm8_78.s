  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovupd %xmm1, %xmm9  #  1     0     4      OPC=vmovupd_xmm_xmm  
  movq %xmm9, %rsi      #  2     0x4   5      OPC=movq_r64_xmm     
  movq $0x0, %rbx       #  3     0x9   10     OPC=movq_r64_imm64   
  popcntl %ebx, %ebp    #  4     0x13  4      OPC=popcntl_r32_r32  
  cmovzq %rsi, %rbx     #  5     0x17  4      OPC=cmovzq_r64_r64   
  retq                  #  6     0x1b  1      OPC=retq             
                                                                   
.size target, .-target
