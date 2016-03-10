  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm8  #  1     0    5      OPC=movshdup_xmm_xmm  
  vmovd %xmm8, %ecx      #  2     0x5  4      OPC=vmovd_r32_xmm     
  movzwq %cx, %rbx       #  3     0x9  4      OPC=movzwq_r64_r16    
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
