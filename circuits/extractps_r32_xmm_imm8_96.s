  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  movups %xmm1, %xmm11  #  1     0     4      OPC=movups_xmm_xmm   
  xorq %rdi, %rdi       #  2     0x4   3      OPC=xorq_r64_r64     
  movq $0x0, %rbx       #  3     0x7   10     OPC=movq_r64_imm64   
  vmovd %xmm11, %edi    #  4     0x11  4      OPC=vmovd_r32_xmm    
  cmovlel %edi, %ebx    #  5     0x15  3      OPC=cmovlel_r32_r32  
  retq                  #  6     0x18  1      OPC=retq             
                                                                   
.size target, .-target
