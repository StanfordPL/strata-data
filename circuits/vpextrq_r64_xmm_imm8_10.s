  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovss %xmm1, %xmm1, %xmm12  #  1     0     4      OPC=vmovss_xmm_xmm_xmm  
  movq %xmm12, %rdi            #  2     0x4   5      OPC=movq_r64_xmm        
  movzbq %dil, %rbx            #  3     0x9   4      OPC=movzbq_r64_r8       
  xchgq %rbx, %rdi             #  4     0xd   3      OPC=xchgq_r64_r64       
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
