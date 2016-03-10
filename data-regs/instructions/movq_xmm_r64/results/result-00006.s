  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovq %rbx, %xmm7           #  1     0    5      OPC=vmovq_xmm_r64       
  vmovss %xmm7, %xmm7, %xmm3  #  2     0x5  4      OPC=vmovss_xmm_xmm_xmm  
  movq %xmm3, %xmm1           #  3     0x9  4      OPC=movq_xmm_xmm        
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
