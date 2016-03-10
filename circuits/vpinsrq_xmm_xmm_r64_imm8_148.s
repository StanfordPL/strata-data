  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  movq %rbx, %xmm13            #  1     0    5      OPC=movq_xmm_r64        
  vmovsd %xmm13, %xmm2, %xmm1  #  2     0x5  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  3     0xa  1      OPC=retq                
                                                                            
.size target, .-target
