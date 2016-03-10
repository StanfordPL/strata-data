  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovaps %xmm2, %xmm1        #  1     0    4      OPC=vmovaps_xmm_xmm     
  movq %rbx, %xmm9            #  2     0x4  5      OPC=movq_xmm_r64        
  vmovsd %xmm9, %xmm1, %xmm1  #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  4     0xe  1      OPC=retq                
                                                                           
.size target, .-target
