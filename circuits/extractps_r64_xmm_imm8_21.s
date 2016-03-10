  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  movshdup %xmm1, %xmm6  #  1     0     4      OPC=movshdup_xmm_xmm  
  movdqa %xmm6, %xmm8    #  2     0x4   5      OPC=movdqa_xmm_xmm    
  vmovd %xmm8, %ebx      #  3     0x9   4      OPC=vmovd_r32_xmm     
  xchgq %rbx, %rbx       #  4     0xd   3      OPC=xchgq_r64_r64     
  retq                   #  5     0x10  1      OPC=retq              
                                                                     
.size target, .-target
