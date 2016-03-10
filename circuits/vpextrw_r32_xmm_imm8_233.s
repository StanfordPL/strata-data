  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovzxwq %xmm1, %xmm9  #  1     0    6      OPC=pmovzxwq_xmm_xmm  
  movhlps %xmm9, %xmm1   #  2     0x6  4      OPC=movhlps_xmm_xmm   
  vmovq %xmm1, %rbx      #  3     0xa  5      OPC=vmovq_r64_xmm     
  retq                   #  4     0xf  1      OPC=retq              
                                                                    
.size target, .-target
