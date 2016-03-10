  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm13  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhpd %xmm13, %xmm13, %xmm5  #  2     0x4   5      OPC=vunpckhpd_xmm_xmm_xmm   
  vmovq %xmm5, %rax                #  3     0x9   5      OPC=vmovq_r64_xmm           
  movzwq %ax, %rbx                 #  4     0xe   4      OPC=movzwq_r64_r16          
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
