  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  vmovdqu %xmm1, %xmm14  #  1     0     4      OPC=vmovdqu_xmm_xmm  
  movd %xmm14, %eax      #  2     0x4   5      OPC=movd_r32_xmm     
  movq $0x20, %rbx       #  3     0x9   10     OPC=movq_r64_imm64   
  xaddl %ebx, %eax       #  4     0x13  3      OPC=xaddl_r32_r32    
  retq                   #  5     0x16  1      OPC=retq             
                                                                    
.size target, .-target
