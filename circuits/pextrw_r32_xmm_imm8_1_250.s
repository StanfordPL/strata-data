  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm2   #  1     0     4      OPC=vmovshdup_xmm_xmm  
  vpmovsxwq %xmm2, %ymm12  #  2     0x4   5      OPC=vpmovsxwq_ymm_xmm  
  movd %xmm12, %ebx        #  3     0x9   5      OPC=movd_r32_xmm       
  movzwq %bx, %rbx         #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                     #  5     0x12  1      OPC=retq               
                                                                        
.size target, .-target
