  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovsd %xmm1, %xmm1, %xmm9  #  1     0    4      OPC=vmovsd_xmm_xmm_xmm  
  vmovq %xmm9, %rbx           #  2     0x4  5      OPC=vmovq_r64_xmm       
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target
