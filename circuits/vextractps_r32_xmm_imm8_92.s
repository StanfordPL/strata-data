  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  movq $0x20, %rbx       #  1     0     10     OPC=movq_r64_imm64   
  vmovdqu %xmm1, %xmm13  #  2     0xa   4      OPC=vmovdqu_xmm_xmm  
  xorb %bl, %bl          #  3     0xe   2      OPC=xorb_r8_r8       
  vmovq %xmm13, %rdi     #  4     0x10  5      OPC=vmovq_r64_xmm    
  cmovael %edi, %ebx     #  5     0x15  3      OPC=cmovael_r32_r32  
  retq                   #  6     0x18  1      OPC=retq             
                                                                    
.size target, .-target
