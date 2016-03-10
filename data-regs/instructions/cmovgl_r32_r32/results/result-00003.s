  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  vmovq %rbx, %xmm13   #  1     0    5      OPC=vmovq_xmm_r64     
  movq %xmm13, %rbx    #  2     0x5  5      OPC=movq_r64_xmm      
  cmovnlel %ecx, %ebx  #  3     0xa  3      OPC=cmovnlel_r32_r32  
  retq                 #  4     0xd  1      OPC=retq              
                                                                  
.size target, .-target
